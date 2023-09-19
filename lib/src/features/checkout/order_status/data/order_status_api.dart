import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:classic_shop/src/features/auth/data/auth_interceptor.dart';
// ignore: depend_on_referenced_packages
import 'package:http/io_client.dart';

part 'order_status_api.chopper.dart';

@ChopperApi(baseUrl: 'http://192.168.10.170:8080/usr/v1')
abstract class OrderStatusApi extends ChopperService {
  static OrderStatusApi create() {
    final client = ChopperClient(
      client: IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 10),
      ),
      services: [_$OrderStatusApi()],
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
        AuthInterceptor(),
      ],
      authenticator: AuthInterceptor(),
    );

    return _$OrderStatusApi(client);
  }

  @Get(
    path: '/users/{id}/order-status/{statusId}',
  )
  Future<Response<Map<String, dynamic>>> getOrderStatus({
    @Path('id') required String userId,
    @Path() required String statusId,
  });
}
