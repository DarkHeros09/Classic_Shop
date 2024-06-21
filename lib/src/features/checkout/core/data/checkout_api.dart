import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:classic_shop/gen/env.g.dart';
import 'package:classic_shop/src/features/auth/data/auth_interceptor.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// ignore: depend_on_referenced_packages
import 'package:http/io_client.dart';

part 'checkout_api.chopper.dart';

@ChopperApi(baseUrl: 'http://${Env.httpAddress}/usr/v1')
abstract class CheckoutApi extends ChopperService {
  static CheckoutApi create(Ref ref) {
    final client = ChopperClient(
      client: IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 10),
      ),
      services: [_$CheckoutApi()],
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
        AuthInterceptor(ref: ref),
      ],
      authenticator: AuthInterceptor(ref: ref),
    );

    return _$CheckoutApi(client);
  }

  @Put(
    path: '/users/{id}/carts/{cartId}/purchase',
  )
  Future<Response<Map<String, dynamic>>> checkout({
    @Path('id') required String userId,
    @Path() required String cartId,
    @Body() required Map<String, dynamic> data,
  });
}
