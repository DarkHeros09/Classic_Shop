import 'package:classic_shop/gen/env.g.dart';
import 'package:classic_shop/src/features/cart/data/cart_extension.dart';
import 'package:classic_shop/src/features/cart/data/cart_local_service.dart';
import 'package:classic_shop/src/features/cart/data/cart_remote_service.dart';
import 'package:classic_shop/src/features/cart/data/shop_cart_item_dto.dart';
import 'package:classic_shop/src/features/cart/domain/shop_cart_item.dart';
import 'package:classic_shop/src/features/cart/domain/shop_cart_item_failure.dart';
import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/data/response_headers_cache.dart';
import 'package:classic_shop/src/features/core/data/user_storage/user_storage.dart';
import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

class CartRepository {
  CartRepository(
    this._localService,
    this._remoteService,
    this._userStorage,
    this._headersCache,
  );

  final CartLocalService _localService;
  final CartRemoteService _remoteService;
  final ResponseHeadersCache _headersCache;
  final UserStorage _userStorage;

  Future<Either<ShopCartItemFailure, Fresh<List<ShopCartItem>>>>
      fetchCart() async {
    try {
      final user = await _userStorage.read();

      if (user != null) {
        // final localCart =
        //     await _localService.fetchCart().then((_) => _.toDomain());
        // for (var i = 0; i < localCart.length; i++) {
        //   if (localCart[i].id == null) {
        //     final createdCartItem = await _remoteService.createCartItem(
        //       userId: user.id,
        //       cartId: user.shoppingCartId??0,
        //       productItemId: localCart[i].productItemId,
        //       qty: localCart[i].qty,
        //     );
        //     await createdCartItem.maybeWhen(
        //       withNewData: (data, maxPage) async {
        //         final modifiedCart = localCart[i].copyWith(
        //           id: data.id,
        //           shoppingCartId: data.shoppingCartId,
        //           qty: data.qty,
        //           createdAt: data.createdAt,
        //           updatedAt: data.updatedAt,
        //         );
        //         final completedDTO = ShopCartItemDTO.fromDomain(modifiedCart);
        //         await _localService.setCart(completedDTO);
        //       },
        //       orElse: () {},
        //     );
        //   }
        // }
        final requestUri = Uri.http(
          Env.httpAddress,
          '/usr/v1/users/${user.id}/carts/items',
        );
        final cart = await _remoteService.fetchCart(
          cartFunction: CartFunction.getCart,
          userId: user.id,
          requestUri: requestUri,
        );

        return right(
          await cart.when(
            noConnection: () async => Fresh.no(
              await _localService.fetchCart(user.id).then((_) => _.toDomain()),
            ),
            noContent: () async {
              await _localService.deleteAllCartItems(user.id);
              return Fresh.no([], isNextPageAvailable: false);
            },
            notModified: (_) async {
              final localData = await _localService
                  .fetchCart(user.id)
                  .then((_) => _.toDomain());
              if (localData.isEmpty) {
                await _headersCache.deleteHeaders(requestUri);
              }
              return Fresh.yes(localData);
            },
            withNewData: (data, _) async {
              final localCartItems = await _localService.fetchCart(user.id);
              if (localCartItems.isNotEmpty) {
                // final itemsToRemoveFromRemote = data
                //     .where((item) => !localCartItems.contains(item))
                //     .toList();
                final itemsToRemoveFromLocal = localCartItems
                    .where(
                      (item) => !data
                          .map((e) => e.productItemId)
                          .contains(item.productItemId),
                    )
                    .toList();
                // for (var i = 0; i < itemsToRemoveFromRemote.length; i++) {
                //   await _remoteService.deleteCartItem(
                //     userId: user.id,
                //     cartId: user.shoppingCartId??0,
                //     shopCartItemId: itemsToRemoveFromRemote[i].id ?? 0,
                //   );
                // }
                if (itemsToRemoveFromLocal.isNotEmpty) {
                  for (var i = 0; i < itemsToRemoveFromLocal.length; i++) {
                    await _localService.deleteCartItem(
                      itemsToRemoveFromLocal[i].productItemId,
                      user.id,
                    );
                  }
                }
              }

              if (data.isNotEmpty) {
                for (var i = 0; i < data.length; i++) {
                  await _localService.setCart(data[i], user.id);
                }
              }

              return Fresh.yes(data.toDomain());
            },
          ),
        );
      }

      // final cart = await _localService.fetchCart();
      // return right(
      //   Fresh.no(cart.toDomain()),
      // );
      return right(
        Fresh.no([]),
      );
    } on RestApiException catch (e) {
      return left(ShopCartItemFailure.api(e.errorCode));
    } on Exception catch (_) {
      return left(const ShopCartItemFailure.api(500));
    }
  }

  Future<Either<ShopCartItemFailure, Unit>> createCartItem({
    required ShopCartItemDTO dto,
  }) async {
    final user = await _userStorage.read();

    if (user != null) {
      try {
        final cart = await _remoteService.createCartItem(
          userId: user.id,
          cartId: user.shoppingCartId ?? 0,
          productItemId: dto.productItemId,
          qty: dto.qty,
        );

        return right(
          await cart.maybeWhen(
            withNewData: (data, maxPage) async {
              final completedDTO = dto.copyWith(
                id: data.id,
                shoppingCartId: data.shoppingCartId,
                qty: data.qty,
                createdAt: data.createdAt,
                updatedAt: data.updatedAt,
              );
              await _localService.setCart(completedDTO, user.id);
              return unit;
            },
            orElse: () => unit,
          ),
        );
      } on RestApiException catch (e) {
        return left(ShopCartItemFailure.api(e.errorCode));
      }
    } else {
      // await _localService.setCart(dto);
      return right(unit);
    }
  }

  // Future<ShopCartItem?> getCartItem(int productItemId) async {
  //   final shopCartItem = await _localService.getCartItem(productItemId);
  //   return shopCartItem?.toDomain();
  // }

  Future<Either<ShopCartItemFailure, ShopCartItem?>> updateCartItem(
    ShopCartItemDTO dto,
  ) async {
    final user = await _userStorage.read();

    if (user != null) {
      try {
        final cart = await _remoteService.updateCartItem(
          userId: user.id,
          cartId: user.shoppingCartId ?? 0,
          productItemId: dto.productItemId,
          shopCartItemId: dto.id!,
          qty: dto.qty,
        );

        return right(
          await cart.maybeWhen(
            withNewData: (data, maxPage) async {
              final updatedDTO = dto.copyWith(
                id: data.id,
                shoppingCartId: data.shoppingCartId,
                qty: data.qty,
                createdAt: data.createdAt,
                updatedAt: data.updatedAt,
              );
              await _localService.updateCartItem(updatedDTO, user.id);
              return updatedDTO.toDomain();
            },
            orElse: () async {
              return dto.toDomain();
            },
          ),
        );
      } on RestApiException catch (e) {
        return left(ShopCartItemFailure.api(e.errorCode));
      }
    }
    // await _localService.updateCartItem(dto);
    // return right(dto.toDomain());
    return right(null);
  }

  Future<bool> deleteCartItem(ShopCartItemDTO dto) async {
    final user = await _userStorage.read();

    if (user != null) {
      debugPrint('beingDeleted');
      final response = await _remoteService.deleteCartItem(
        userId: user.id,
        cartId: user.shoppingCartId ?? 0,
        shopCartItemId: dto.id ?? 0,
      );
      return response.maybeWhen(
        withNewData: (data, maxPage) {
          debugPrint('1111c');
          _localService.deleteCartItem(dto.productItemId, user.id);
          return data;
        },
        orElse: () => false,
      );
    }
    // await _localService.deleteCartItem(dto.productItemId);
    debugPrint('FALSE');
    return false;
  }

  Future<void> deleteAllCartItems() async {
    final user = await _userStorage.read();

    if (user != null) {
      await _remoteService.deleteAllCartItems(
        userId: user.id,
        cartId: user.shoppingCartId ?? 0,
      );
    }
    // await _localService.deleteAllCartItems();
  }

  // Future<void> syncCartData() async {
  //   // Fetch the user's cart items from the server
  //   final user = await _userStorage.read();
  //   if (user != null) {
  //     final remoteCartItems = await _remoteService.fetchCart(
  //       cartFunction: CartFunction.getCart,
  //       userId: user.id,
  //     );

  //     // Fetch the user's cart items from the local storage
  //     final localCartItems = await _localService.fetchCart();

  //     // Determine which items need to be added or removed
  //     await remoteCartItems.whenOrNull(
  //       withNewData: (data, maxPage) async {
  //         final itemsToAdd =
  //             data.where((item) => !localCartItems.contains(item)).toList();
  //         data.addAll(itemsToAdd);
  //         await _remoteService.setCart(
  //           cartItemDTO: data,
  //           userId: user.id,
  //           cartId: user.shoppingCartId??0,
  //         );

  //         final itemsToRemove =
  //             localCartItems.where((item) => !data.contains(item)).toList();

  //         localCartItems.removeWhere(itemsToRemove.contains);

  //         await _localService.setCart(localCartItems);
  //       },
  //     );
  //   }
  // }
}
