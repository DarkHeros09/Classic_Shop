import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:classic_shop/src/features/auth/data/auth_interceptor.dart';
// ignore: depend_on_referenced_packages
import 'package:http/io_client.dart';

part 'payment_method_api.chopper.dart';

@ChopperApi(baseUrl: 'http://192.168.10.170:8080/usr/v1')
abstract class PaymentMethodApi extends ChopperService {
  static PaymentMethodApi create() {
    final client = ChopperClient(
      client: IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 10),
      ),
      services: [_$PaymentMethodApi()],
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
        AuthInterceptor(),
      ],
      authenticator: AuthInterceptor(),
    );

    return _$PaymentMethodApi(client);
  }

  @Post(
    path: '/users/{id}/payment-methods',
  )
  Future<Response<Map<String, dynamic>>> createPaymentMethod({
    @Path('id') required String userId,
    @Body() required Map<String, dynamic> data,
  });

  @Get(
    path: '/users/{id}/payment-method',
    // path: '/users/{id}/payment-methods/{paymentId}',
  )
  Future<Response<Map<String, dynamic>>> getPaymentMethod({
    @Path('id') required String userId,
    // @Path('paymentId') required String paymentMethodId,
    @Body() required Map<String, dynamic> data,
  });
}
