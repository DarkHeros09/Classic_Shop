import 'package:classic_shop/gen/env.g.dart';
import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/data/response_headers_cache.dart';
import 'package:classic_shop/src/features/core/data/user_storage/user_storage.dart';
import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';
import 'package:classic_shop/src/features/wish_list/data/wish_list_extension.dart';
import 'package:classic_shop/src/features/wish_list/data/wish_list_item_dto.dart';
import 'package:classic_shop/src/features/wish_list/data/wish_list_local_service.dart';
import 'package:classic_shop/src/features/wish_list/data/wish_list_remote_service.dart';
import 'package:classic_shop/src/features/wish_list/domain/wish_list_item.dart';
import 'package:classic_shop/src/features/wish_list/domain/wish_list_item_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

class WishListRepository {
  WishListRepository(
    this._localService,
    this._remoteService,
    this._userStorage,
    this._headersCache,
    // this._isarService,
  );

  final WishListLocalService _localService;
  final WishListRemoteService _remoteService;
  final ResponseHeadersCache _headersCache;
  // final WishListIsarService _isarService;
  final UserStorage _userStorage;

  Future<Either<WishListItemFailure, Fresh<List<WishListItem>>>>
      fetchWishList() async {
    try {
      final user = await _userStorage.read();
      if (user != null) {
        final requestUri = Uri.http(
          Env.httpAddress,
          '/usr/v1/users/${user.id}/wish-lists/items',
        );
        final wishList = await _remoteService.fetchWishList(
          cartFunction: WishListFunction.getWishList,
          userId: user.id,
          requestUri: requestUri,
        );

        return right(
          await wishList.when(
            noConnection: () async => Fresh.no(
              await _localService.fetchWishList().then((_) => _.toDomain()),
            ),
            noContent: () async {
              await _localService.deleteAllWishListItems();
              return Fresh.no([], isNextPageAvailable: false);
            },
            notModified: (_) async {
              final localData =
                  await _localService.fetchWishList().then((_) => _.toDomain());
              if (localData.isEmpty) {
                await _headersCache.deleteHeaders(requestUri);
              }
              return Fresh.yes(localData);
            },
            withNewData: (data, _) async {
              final localWishListItems = await _localService.fetchWishList();
              if (localWishListItems.isNotEmpty) {
                // final itemsToRemoveFromRemote = data
                //     .where((item) => !localWishListItems.contains(item))
                //     .toList();

                final itemsToRemoveFromLocal = localWishListItems
                    .where(
                      (item) => !data
                          .map((e) => e.productItemId)
                          .contains(item.productItemId),
                    )
                    .toList();

                // for (var i = 0; i < itemsToRemoveFromRemote.length; i++) {
                //   await _remoteService.deleteWishListItem(
                //     userId: user.id,
                //     wishListId: user.wishListId,
                //     wishListItemId: itemsToRemoveFromRemote[i].id ?? 0,
                //   );
                // }
                if (itemsToRemoveFromLocal.isNotEmpty) {
                  for (var i = 0; i < itemsToRemoveFromLocal.length; i++) {
                    await _localService.deleteWishListItem(
                      itemsToRemoveFromLocal[i].productItemId,
                    );
                  }
                }
              }

              if (data.isNotEmpty) {
                for (var i = 0; i < data.length; i++) {
                  await _localService.setWishList(data[i]);
                }
              }

              return Fresh.yes(data.toDomain());
            },
          ),
        );
      }

      final wishList = await _localService.fetchWishList();
      return right(
        Fresh.no(wishList.toDomain()),
      );
    } on RestApiException catch (e) {
      return left(WishListItemFailure.api(e.errorCode));
    } on Exception catch (_) {
      rethrow;
    }
  }

  Future<Either<WishListItemFailure, Unit>> createWishListItem({
    required WishListItemDTO dto,
  }) async {
    final user = await _userStorage.read();

    if (user != null) {
      try {
        final wishList = await _remoteService.createWishListItem(
          userId: user.id,
          wishListId: user.wishListId,
          productItemId: dto.productItemId,
        );

        return right(
          await wishList.maybeWhen(
            withNewData: (data, maxPage) async {
              final completedDTO = dto.copyWith(
                id: data.id,
                wishListId: data.wishListId,
                createdAt: data.createdAt,
                updatedAt: data.updatedAt,
              );
              await _localService.setWishList(completedDTO);
              return unit;
            },
            orElse: () => unit,
          ),
        );
      } on RestApiException catch (e) {
        return left(WishListItemFailure.api(e.errorCode));
      }
    } else {
      // await _localService.setWishList(dto);
      return right(unit);
    }
  }

  Future<Either<WishListItemFailure, WishListItem>> updateWishListItem(
    WishListItemDTO dto,
  ) async {
    final user = await _userStorage.read();

    if (user != null) {
      try {
        final wishList = await _remoteService.updateWishListItem(
          userId: user.id,
          wishListId: user.wishListId,
          productItemId: dto.productItemId,
          wishListItemId: dto.id!,
        );

        return right(
          await wishList.maybeWhen(
            withNewData: (data, maxPage) async {
              final updatedDTO = dto.copyWith(
                id: data.id,
                wishListId: data.wishListId,
                createdAt: data.createdAt,
                updatedAt: data.updatedAt,
              );
              await _localService.updateWishListItem(updatedDTO);
              return updatedDTO.toDomain();
            },
            orElse: () async {
              return dto.toDomain();
            },
          ),
        );
      } on RestApiException catch (e) {
        return left(WishListItemFailure.api(e.errorCode));
      }
    }
    await _localService.updateWishListItem(dto);
    return right(dto.toDomain());
  }

  Future<bool> deleteWishListItem(WishListItemDTO dto) async {
    final user = await _userStorage.read();

    if (user != null) {
      debugPrint('beingDeleted');
      final response = await _remoteService.deleteWishListItem(
        userId: user.id,
        wishListId: user.wishListId,
        wishListItemId: dto.id ?? 0,
      );
      return response.maybeWhen(
        withNewData: (data, maxPage) {
          debugPrint('1111c');
          _localService.deleteWishListItem(dto.productItemId);
          return data;
        },
        orElse: () => false,
      );
    }
    // await _localService.deleteWishListItem(dto.productItemId);
    debugPrint('FALSE');
    return false;
  }

  Future<void> deleteAllWishListItems() async {
    final user = await _userStorage.read();

    if (user != null) {
      await _remoteService.deleteAllWishListItems(
        userId: user.id,
        wishListId: user.wishListId,
      );
    }
    await _localService.deleteAllWishListItems();
  }
}
