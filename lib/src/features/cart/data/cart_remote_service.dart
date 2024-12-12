import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:classic_shop/src/features/cart/data/cart_api.dart';
import 'package:classic_shop/src/features/cart/data/shop_cart_item_dto.dart';
import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/data/remote_response.dart';
import 'package:classic_shop/src/features/core/data/response_headers.dart';
import 'package:classic_shop/src/features/core/data/response_headers_cache.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';

abstract class ICartRemoteService {
  Future<RemoteResponse<List<ShopCartItemDTO?>>> fetchCart({
    required CartFunction cartFunction,
    required int userId,
    required Uri requestUri,
  });

  // Stream<RemoteResponse<List<ShopCartItemDTO>>> watchCart(
  //   int userId,
  //   String accessToken,
  // );

  Future<RemoteResponse<ShopCartItemDTO>> createCartItem({
    required int userId,
    required int cartId,
    required int productItemId,
    required int sizeId,
    required int qty,
  });

  Future<RemoteResponse<ShopCartItemDTO>> updateCartItem({
    required int userId,
    required int cartId,
    required int shopCartItemId,
    required int productItemId,
    required int sizeId,
    required int qty,
  });

  Future<RemoteResponse<bool>> deleteCartItem({
    required int userId,
    required int cartId,
    required int shopCartItemId,
  });

  Future<RemoteResponse<bool>> deleteAllCartItems({
    required int userId,
    required int cartId,
  });
}

class CartRemoteService implements ICartRemoteService {
  const CartRemoteService(
    this._cartApi,
    this._headersCache,
  );

  final CartApi _cartApi;
  final ResponseHeadersCache _headersCache;

  @override
  Future<RemoteResponse<List<ShopCartItemDTO>>> fetchCart({
    required CartFunction cartFunction,
    required int userId,
    required Uri requestUri,
  }) async {
    final previousHeaders = await _headersCache.getHeaders(requestUri);
    try {
      late final Response<List<Map<String, dynamic>>> response;
      switch (cartFunction) {
        case CartFunction.getCart:
          response = await _cartApi.getCartItems(
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
          convertedBody?.map(ShopCartItemDTO.fromJson).toList() ?? [],
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
  Future<RemoteResponse<ShopCartItemDTO>> createCartItem({
    required int userId,
    required int cartId,
    required int productItemId,
    required int sizeId,
    required int qty,
  }) async {
    try {
      final response = await _cartApi.createCartItem(
        userId: userId.toString(),
        cartId: cartId.toString(),
        data: {
          'product_item_id': productItemId,
          'size_id': sizeId,
          'qty': qty,
        },
      );

      if (!response.isSuccessful) {
        throw RestApiException(response.statusCode);
      }

      final body = response.body;

      if (body == null) {
        throw const RestApiException();
      }

      final shopCartItemDTO = ShopCartItemDTO.fromJson(body);

      return RemoteResponse.withNewData(shopCartItemDTO, nextAvailable: false);
    } on SocketException {
      return const RemoteResponse.noConnection();
    }
  }

  @override
  Future<RemoteResponse<ShopCartItemDTO>> updateCartItem({
    required int userId,
    required int cartId,
    required int productItemId,
    required int sizeId,
    required int shopCartItemId,
    required int qty,
  }) async {
    try {
      final response = await _cartApi.updateCartItem(
        userId: userId.toString(),
        cartId: cartId.toString(),
        shoppingCartItemId: shopCartItemId.toString(),
        data: {
          'product_item_id': productItemId,
          'size_id': sizeId,
          'qty': qty,
        },
      );
      if (!response.isSuccessful) {
        throw RestApiException(response.statusCode);
      }

      final body = response.body;

      if (body == null) {
        throw const RestApiException();
      }

      final shopCartItemDTO = ShopCartItemDTO.fromJson(body);

      return RemoteResponse.withNewData(shopCartItemDTO, nextAvailable: false);
    } on SocketException {
      return const RemoteResponse.noConnection();
    }
  }

  // @override
  // Stream<RemoteResponse<List<ShopCartItemDTO>>> watchCart(
  //   int userId,
  //   String accessToken,
  // ) {
  //   return Stream.fromFuture(
  //     fetchCart(
  //       cartFunction: CartFunction.getCart,
  //       userId: userId,

  //     ),
  //   );
  // }

  @override
  Future<RemoteResponse<bool>> deleteAllCartItems({
    required int userId,
    required int cartId,
  }) async {
    try {
      final response = await _cartApi.deleteAllCartItems(
        userId: userId.toString(),
        cartId: cartId.toString(),
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
  Future<RemoteResponse<bool>> deleteCartItem({
    required int userId,
    required int cartId,
    required int shopCartItemId,
  }) async {
    try {
      final response = await _cartApi.deleteCartItem(
        userId: userId.toString(),
        cartId: cartId.toString(),
        shoppingCartItemId: shopCartItemId.toString(),
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
