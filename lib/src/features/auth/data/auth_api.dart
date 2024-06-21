import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:classic_shop/gen/env.g.dart';
import 'package:classic_shop/src/features/auth/data/auth_interceptor.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// ignore: depend_on_referenced_packages
import 'package:http/io_client.dart';

part 'auth_api.chopper.dart';

const normalheaders = {'Content-Type': 'application/json'};

@ChopperApi(baseUrl: 'http://${Env.httpAddress}/api/v1')
abstract class AuthApi extends ChopperService {
  static AuthApi create() {
    final client = ChopperClient(
      client: IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 10),
      ),
      services: [_$AuthApi()],
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
        // AuthInterceptor(ref: ref),
      ],
      // authenticator: AuthInterceptor(ref: ref),
    );

    return _$AuthApi(client);
  }

  @Post(
    path: '/users',
    headers: normalheaders,
  )
  Future<Response<Map<String, dynamic>>> signUp({
    @Body() required Map<String, dynamic> data,
  });

  @Post(
    path: '/users/login',
    headers: normalheaders,
  )
  Future<Response<Map<String, dynamic>>> signIn({
    @Body() required Map<String, dynamic> data,
  });

  @Post(
    path: '/auth/access-token',
    headers: normalheaders,
  )
  Future<Response<Map<String, dynamic>>> renewAccessToken({
    @Header('Authorization') required String accessToken,
    @Body() required Map<String, dynamic> data,
  });
}

@ChopperApi(baseUrl: 'http://${Env.httpAddress}/usr/v1')
abstract class AuthApi2 extends ChopperService {
  static AuthApi2 create(Ref ref) {
    final client = ChopperClient(
      client: IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 10),
      ),
      services: [_$AuthApi2()],
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
        AuthInterceptor(ref: ref),
      ],
      authenticator: AuthInterceptor(ref: ref),
    );

    return _$AuthApi2(client);
  }

  @Delete(
    path: '/users/{id}/logout',
    headers: normalheaders,
  )
  Future<Response<void>> signOut({
    @Header('Authorization') required String accessToken,
    @Path('id') required String userId,
    @Body() required Map<String, dynamic> data,
  });
}
