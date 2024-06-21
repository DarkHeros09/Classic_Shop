import 'package:classic_shop/gen/env.g.dart';
import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/data/pagination_config.dart';
import 'package:classic_shop/src/features/core/data/remote_response.dart';
import 'package:classic_shop/src/features/core/data/response_headers_cache.dart';
import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:classic_shop/src/features/shop_order/core/data/shop_order_dto.dart';
import 'package:classic_shop/src/features/shop_order/core/data/shop_order_extension.dart';
import 'package:classic_shop/src/features/shop_order/core/data/shop_order_local_service.dart';
import 'package:classic_shop/src/features/shop_order/core/data/shop_order_remote_service.dart';
import 'package:classic_shop/src/features/shop_order/core/domain/shop_order.dart';
import 'package:classic_shop/src/features/shop_order/core/domain/shop_order_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

class ShopOrderRepository {
  ShopOrderRepository(
    this._remoteService,
    this._localService,
    this._headersCache,
  );

  final ShopOrderRemoteService _remoteService;
  final ShopOrderLocalService _localService;
  final ResponseHeadersCache _headersCache;

  Map<String, String> _createQueryParams({
    int? pageSize = PaginationConfig.itemsPerPage,
    String? orderStatus,
    int? lastItemId,
  }) {
    final queryParams = {
      'limit': pageSize.toString(),
    };
    if (orderStatus != null) {
      queryParams['order_status'] = orderStatus;
    }
    if (lastItemId != null) {
      queryParams['cursor'] = lastItemId.toString();
    }
    return queryParams;
  }

  Future<Either<ShopOrderFailure, Fresh<List<ShopOrder>>>> getShopOrders(
    int page, {
    required int userId,
    String? orderStatus,
    int? pageSize,
  }) async {
    try {
      final queryParams = _createQueryParams(orderStatus: orderStatus);
      final requestUri = Uri.http(
        Env.httpAddress,
        '/usr/v1/users/$userId/shop-orders-v2',
        queryParams,
      );
      final remotePageShopOrders = await _remoteService.getShopOrders(
        pageSize: pageSize,
        userId: userId,
        requestUri: requestUri,
        shopOrdersFunction: ShopOrdersFunction.getShopOrders,
        orderStatus: orderStatus,
      );
      return await _rightRemotePageShopOrders(
        remotePageShopOrders,
        page,
        requestUri,
      );
    } on RestApiException catch (e) {
      return left(ShopOrderFailure.api(e.errorCode));
    }
  }

  Future<Either<ShopOrderFailure, Fresh<List<ShopOrder>>>>
      getShopOrdersNextPage(
    int lastItemId,
    int page, {
    required int userId,
    String? orderStatus,
    int? pageSize,
  }) async {
    try {
      final queryParams = _createQueryParams(
        orderStatus: orderStatus,
        lastItemId: lastItemId,
      );
      final requestUri = Uri.http(
        Env.httpAddress,
        '/usr/v1/users/$userId/shop-orders-next-page',
        queryParams,
      );
      final remotePageShopOrders = await _remoteService.getShopOrders(
        pageSize: pageSize,
        userId: userId,
        requestUri: requestUri,
        shopOrdersFunction: ShopOrdersFunction.getShopOrdersNextPage,
        orderStatus: orderStatus,
        lastItemId: lastItemId,
      );
      return _rightRemotePageShopOrders(remotePageShopOrders, page, requestUri);
    } on RestApiException catch (e) {
      return left(ShopOrderFailure.api(e.errorCode));
    }
  }

  Future<Either<ShopOrderFailure, Fresh<List<ShopOrder>>>>
      _rightRemotePageShopOrders(
    RemoteResponse<List<ShopOrderDTO>> remotePageShopOrders,
    int page,
    Uri requestUri,
  ) async {
    return right(
      await remotePageShopOrders.when(
        noConnection: () async => Fresh.no(
          await _localService
              .getPage(page, requestUri.toString())
              .then((_) => _.toDomain()),
          isNextPageAvailable: page <
              await _localService.getLocalPageCount(requestUri.toString()),
        ),
        noContent: () async {
          await _localService.deleteAllProducts(requestUri.toString());
          return Fresh.no([], isNextPageAvailable: false);
        },
        notModified: (nextAvailable) async {
          // await _localService.deleteAllProducts(requestUri.toString());
          // await _headersCache.deleteAllHeaders();
          final localData = await _localService
              .getPage(page, requestUri.toString())
              .then((_) => _.toDomain());

          if (localData.isEmpty) {
            await _headersCache.deleteHeaders(requestUri);
          }
          debugPrint('nextPage1 $nextAvailable');
          return Fresh.yes(
            localData,
            isNextPageAvailable: nextAvailable,
          );
        },
        withNewData: (data, nextAvailable) async {
          // await _localService.deletePage(page, requestUri.toString());
          await _localService.upsertPage(data, page, requestUri.toString());
          return Fresh.yes(
            data.toDomain(),
            isNextPageAvailable: nextAvailable,
          );
        },
      ),
    );
  }
}
