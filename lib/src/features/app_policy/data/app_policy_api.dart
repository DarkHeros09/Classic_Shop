import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:classic_shop/gen/env.g.dart';
import 'package:classic_shop/src/features/auth/data/auth_interceptor.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// ignore: depend_on_referenced_packages
import 'package:http/io_client.dart';

part 'app_policy_api.chopper.dart';

@ChopperApi(baseUrl: 'http://${Env.httpAddress}/api/v1')
abstract class AppPolicyApi extends ChopperService {
  static AppPolicyApi create(Ref ref) {
    final client = ChopperClient(
      client: IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 10),
      ),
      services: [_$AppPolicyApi()],
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
      ],
      authenticator: AuthInterceptor(ref: ref),
    );

    return _$AppPolicyApi(client);
  }

  @Get(
    path: '/app-policy',
  )
  Future<Response<Map<String, dynamic>>> getAppPolicy({
    @Header('If-None-Match') required String ifNoneMatch,
  });
}
