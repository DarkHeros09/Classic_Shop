import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:classic_shop/src/features/auth/data/auth_interceptor.dart';
// ignore: depend_on_referenced_packages
import 'package:http/io_client.dart';

part 'shop_order_items_api.chopper.dart';

@ChopperApi(baseUrl: 'http://192.168.10.170:8080/usr/v1')
abstract class ShopOrderItemsApi extends ChopperService {
  static ShopOrderItemsApi create() {
    final client = ChopperClient(
      client: IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 10),
      ),
      services: [_$ShopOrderItemsApi()],
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
        AuthInterceptor(),
      ],
      authenticator: AuthInterceptor(),
    );

    return _$ShopOrderItemsApi(client);
  }

  @Get(
    path: '/users/{id}/shop-order-items/{orderId}',
  )
  Future<Response<List<Map<String, dynamic>>>> listShopOrderItems({
    @Header('If-None-Match') required String ifNoneMatch,
    @Path('id') required String userId,
    @Path('orderId') required String orderId,
  });
}
