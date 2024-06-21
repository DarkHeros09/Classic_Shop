import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:classic_shop/gen/env.g.dart';
import 'package:classic_shop/src/features/auth/data/auth_interceptor.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// ignore: depend_on_referenced_packages
import 'package:http/io_client.dart';

part 'shop_order_api.chopper.dart';

@ChopperApi(baseUrl: 'http://${Env.httpAddress}/usr/v1')
abstract class ShopOrderApi extends ChopperService {
  static ShopOrderApi create(Ref ref) {
    final client = ChopperClient(
      client: IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 10),
      ),
      services: [_$ShopOrderApi()],
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
        AuthInterceptor(ref: ref),
      ],
      authenticator: AuthInterceptor(ref: ref),
    );

    return _$ShopOrderApi(client);
  }

  @Get(
    path: '/users/{id}/shop-orders',
  )
  Future<Response<List<Map<String, dynamic>>>> listShopOrders({
    @Header('If-None-Match') required String ifNoneMatch,
    @Path('id') required String userId,
    @Query('page_id') required int pageId,
    @Query('page_size') required int pageSize,
  });
  @Get(
    path: '/users/{id}/shop-orders-v2',
  )
  Future<Response<List<Map<String, dynamic>>>> listShopOrdersV2({
    @Header('If-None-Match') required String ifNoneMatch,
    @Path('id') required String userId,
    @Query('limit') required int pageSize,
    @Query('order_status') String? orderStatus,
  });
  @Get(
    path: '/users/{id}/shop-orders-next-page',
  )
  Future<Response<List<Map<String, dynamic>>>> listShopOrdersNextPage({
    @Header('If-None-Match') required String ifNoneMatch,
    @Path('id') required String userId,
    @Query('cursor') required int lastItemId,
    @Query('limit') required int pageSize,
    @Query('order_status') String? orderStatus,
  });
}
