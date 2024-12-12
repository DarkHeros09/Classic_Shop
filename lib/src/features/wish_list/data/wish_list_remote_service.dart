import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/data/remote_response.dart';
import 'package:classic_shop/src/features/core/data/response_headers.dart';
import 'package:classic_shop/src/features/core/data/response_headers_cache.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';
import 'package:classic_shop/src/features/wish_list/data/wish_list_api.dart';
import 'package:classic_shop/src/features/wish_list/data/wish_list_item_dto.dart';

abstract class IWishListRemoteService {
  Future<RemoteResponse<List<WishListItemDTO?>>> fetchWishList({
    required WishListFunction cartFunction,
    required int userId,
    required Uri requestUri,
  });

  // Stream<RemoteResponse<List<WishListItemDTO>>> watchWishList(
  //   int userId,
  //   String accessToken,
  // );

  Future<RemoteResponse<WishListItemDTO>> createWishListItem({
    required int userId,
    required int wishListId,
    required int productItemId,
    required int sizeId,
  });

  Future<RemoteResponse<WishListItemDTO>> updateWishListItem({
    required int userId,
    required int wishListId,
    required int wishListItemId,
    required int productItemId,
    required int sizeId,
  });

  Future<RemoteResponse<bool>> deleteWishListItem({
    required int userId,
    required int wishListId,
    required int wishListItemId,
  });

  Future<RemoteResponse<bool>> deleteAllWishListItems({
    required int userId,
    required int wishListId,
  });
}

class WishListRemoteService implements IWishListRemoteService {
  WishListRemoteService(
    this._cartApi,
    this._headersCache,
  );

  final WishListApi _cartApi;
  final ResponseHeadersCache _headersCache;

  @override
  Future<RemoteResponse<List<WishListItemDTO>>> fetchWishList({
    required WishListFunction cartFunction,
    required int userId,
    required Uri requestUri,
  }) async {
    final previousHeaders = await _headersCache.getHeaders(requestUri);
    try {
      late final Response<List<Map<String, dynamic>>> response;
      switch (cartFunction) {
        case WishListFunction.getWishList:
          response = await _cartApi.getWishListItems(
            ifNoneMatch: previousHeaders?.etag ?? '',
            userId: userId.toString(),
          );
      }

      if (response.statusCode == 304) {
        return const RemoteResponse.notModified(
          nextAvailable: false,
        );
      }

      if (response.isSuccessful) {
        final headers = ResponseHeaders.parse(response);
        await _headersCache.saveHeaders(requestUri, headers);
        final convertedBody = response.body;
        return RemoteResponse.withNewData(
          convertedBody?.map(WishListItemDTO.fromJson).toList() ?? [],
          nextAvailable: false,
        );
      } else {
        throw RestApiException(response.statusCode);
      }
    } on SocketException {
      return const RemoteResponse.noConnection();
    }
  }

  @override
  Future<RemoteResponse<WishListItemDTO>> createWishListItem({
    required int userId,
    required int wishListId,
    required int productItemId,
    required int sizeId,
  }) async {
    try {
      final response = await _cartApi.createWishListItem(
        userId: userId.toString(),
        wishListId: wishListId.toString(),
        data: {
          'product_item_id': productItemId,
          'size_id': sizeId,
        },
      );

      if (!response.isSuccessful) {
        // throw RestApiException(response.statusCode);
        return const RemoteResponse.noConnection();
      }

      final body = response.body;

      if (body == null) {
        throw const RestApiException();
      }

      final shopWishListItemDTO = WishListItemDTO.fromJson(body);

      return RemoteResponse.withNewData(
        shopWishListItemDTO,
        nextAvailable: false,
      );
    } on SocketException {
      return const RemoteResponse.noConnection();
    }
  }

  @override
  Future<RemoteResponse<WishListItemDTO>> updateWishListItem({
    required int userId,
    required int wishListId,
    required int productItemId,
    required int sizeId,
    required int wishListItemId,
  }) async {
    try {
      final response = await _cartApi.updateWishListItem(
        userId: userId.toString(),
        wishListId: wishListId.toString(),
        wishListItemId: wishListItemId.toString(),
        data: {
          'product_item_id': productItemId,
          'size_id': sizeId,
        },
      );
      if (!response.isSuccessful) {
        throw RestApiException(response.statusCode);
      }

      final body = response.body;

      if (body == null) {
        throw const RestApiException();
      }

      final shopWishListItemDTO = WishListItemDTO.fromJson(body);

      return RemoteResponse.withNewData(
        shopWishListItemDTO,
        nextAvailable: false,
      );
    } on SocketException {
      return const RemoteResponse.noConnection();
    }
  }

  // @override
  // Stream<RemoteResponse<List<WishListItemDTO>>> watchWishList(
  //   int userId,
  //   String accessToken,
  // ) {
  //   return Stream.fromFuture(
  //     fetchWishList(
  //       cartFunction: WishListFunction.getWishList,
  //       userId: userId,
  //     ),
  //   );
  // }

  @override
  Future<RemoteResponse<bool>> deleteAllWishListItems({
    required int userId,
    required int wishListId,
  }) async {
    try {
      final response = await _cartApi.deleteAllWishListItems(
        userId: userId.toString(),
        wishListId: wishListId.toString(),
      );

      if (!response.isSuccessful) {
        throw RestApiException(response.statusCode);
      }

      final body = response.body;

      if (body == null) {
        throw const RestApiException();
      }

      return const RemoteResponse.withNewData(false, nextAvailable: false);
    } on SocketException {
      return const RemoteResponse.noConnection();
    }
  }

  @override
  Future<RemoteResponse<bool>> deleteWishListItem({
    required int userId,
    required int wishListId,
    required int wishListItemId,
  }) async {
    try {
      final response = await _cartApi.deleteWishListItem(
        userId: userId.toString(),
        wishListId: wishListId.toString(),
        wishListItemId: wishListItemId.toString(),
      );

      if (!response.isSuccessful) {
        throw RestApiException(response.statusCode);
      }

      final body = response.body;

      if (body == null) {
        throw const RestApiException();
      }
      return const RemoteResponse.withNewData(true, nextAvailable: false);
    } on SocketException {
      return const RemoteResponse.noConnection();
    }
  }
}
