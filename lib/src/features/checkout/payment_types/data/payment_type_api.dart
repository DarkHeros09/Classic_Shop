import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:classic_shop/gen/env.g.dart';
import 'package:classic_shop/src/features/auth/data/auth_interceptor.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// ignore: depend_on_referenced_packages
import 'package:http/io_client.dart';

part 'payment_type_api.chopper.dart';

@ChopperApi(baseUrl: 'http://${Env.httpAddress}/usr/v1')
abstract class PaymentTypeApi extends ChopperService {
  static PaymentTypeApi create(Ref ref) {
    final client = ChopperClient(
      client: IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 10),
      ),
      services: [_$PaymentTypeApi()],
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
        AuthInterceptor(ref: ref),
      ],
      authenticator: AuthInterceptor(ref: ref),
    );

    return _$PaymentTypeApi(client);
  }

  @Get(
    path: '/users/{id}/payment-types',
  )
  Future<Response<List<Map<String, dynamic>>>> listPaymentTypes({
    @Path('id') required String userId,
  });
}
