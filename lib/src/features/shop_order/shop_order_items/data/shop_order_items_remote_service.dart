import 'dart:io';

import 'package:classic_shop/gen/env.g.dart';
import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/data/remote_response.dart';
import 'package:classic_shop/src/features/core/data/response_headers.dart';
import 'package:classic_shop/src/features/core/data/response_headers_cache.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/data/shop_order_items_api.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/data/shop_order_items_dto.dart';

abstract class IShopOrderItemsRemoteService {
  Future<RemoteResponse<List<ShopOrderItemsDTO?>>> fetchShopOrderItems({
    required int userId,
    required int orderId,
  });
}

class ShopOrderItemsRemoteService implements IShopOrderItemsRemoteService {
  ShopOrderItemsRemoteService(
    this._shopOrderItemsApi,
    this._headersCache,
  );

  final ShopOrderItemsApi _shopOrderItemsApi;
  final ResponseHeadersCache _headersCache;

  @override
  Future<RemoteResponse<List<ShopOrderItemsDTO>>> fetchShopOrderItems({
    required int userId,
    required int orderId,
  }) async {
    final requestUri = Uri.http(
      Env.httpAddress,
      '/usr/v1/users/$userId/shop-order-items/$orderId',
    );
    final previousHeaders = await _headersCache.getHeaders(requestUri);
    try {
      final response = await _shopOrderItemsApi.listShopOrderItems(
        ifNoneMatch: previousHeaders?.etag ?? '',
        userId: userId.toString(),
        orderId: orderId.toString(),
      );

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
          convertedBody?.map(ShopOrderItemsDTO.fromJson).toList() ?? [],
          nextAvailable: false,
        );
      } else {
        throw RestApiException(response.statusCode);
      }
    } on SocketException {
      return const RemoteResponse.noConnection();
    }
  }
}
