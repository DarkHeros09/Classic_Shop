import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/data/pagination_config.dart';
import 'package:classic_shop/src/features/core/data/remote_response.dart';
import 'package:classic_shop/src/features/core/data/response_headers.dart';
import 'package:classic_shop/src/features/core/data/response_headers_cache.dart';
import 'package:classic_shop/src/features/shop_order/core/data/shop_order_api.dart';
import 'package:classic_shop/src/features/shop_order/core/data/shop_order_dto.dart';

enum ShopOrdersFunction {
  getShopOrders,
  getShopOrdersNextPage,
}

class ShopOrderRemoteService {
  ShopOrderRemoteService(
    this._shopOrderApi,
    this._headersCache,
  );

  final ShopOrderApi _shopOrderApi;
  final ResponseHeadersCache _headersCache;

  Future<RemoteResponse<List<ShopOrderDTO>>> getShopOrders({
    required Uri requestUri,
    required ShopOrdersFunction shopOrdersFunction,
    required int userId,
    String? orderStatus,
    int lastItemId = 0,
    int? pageSize,
  }) async {
    final previousHeaders = await _headersCache.getHeaders(requestUri);
    try {
      late final Response<List<Map<String, dynamic>>> response;
      switch (shopOrdersFunction) {
        case ShopOrdersFunction.getShopOrders:
          response = await _shopOrderApi.listShopOrdersV2(
            ifNoneMatch: previousHeaders?.etag ?? '',
            userId: userId.toString(),
            orderStatus: orderStatus,
            pageSize: pageSize ?? PaginationConfig.itemsPerPage,
          );

        case ShopOrdersFunction.getShopOrdersNextPage:
          response = await _shopOrderApi.listShopOrdersNextPage(
            ifNoneMatch: previousHeaders?.etag ?? '',
            userId: userId.toString(),
            orderStatus: orderStatus,
            pageSize: PaginationConfig.itemsPerPage,
            lastItemId: lastItemId,
          );
      }

      if (response.statusCode == 304) {
        return RemoteResponse.notModified(
          nextAvailable: previousHeaders?.nextAvailable ?? false,
        );
      }

      if (response.isSuccessful) {
        final headers = ResponseHeaders.parse(response);
        await _headersCache.saveHeaders(requestUri, headers);
        // response as Response<List<Map<String, dynamic>>>;
        final convertedBody =
            response.body!.map(ShopOrderDTO.fromJson).toList();
        return RemoteResponse.withNewData(
          convertedBody,
          nextAvailable: headers.nextAvailable ?? true,
        );
      } else {
        throw RestApiException(response.statusCode);
      }
    } on SocketException {
      return const RemoteResponse.noConnection();
    }
  }
}
