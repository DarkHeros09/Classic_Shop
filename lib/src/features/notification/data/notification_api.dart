import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:classic_shop/gen/env.g.dart';
import 'package:classic_shop/src/features/auth/data/auth_interceptor.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// ignore: depend_on_referenced_packages
import 'package:http/io_client.dart';

part 'notification_api.chopper.dart';

@ChopperApi(baseUrl: 'http://${Env.httpAddress}/usr/v1')
abstract class NotificationApi extends ChopperService {
  static NotificationApi create(Ref ref) {
    final client = ChopperClient(
      client: IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 10),
      ),
      services: [_$NotificationApi()],
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
        AuthInterceptor(ref: ref),
      ],
      authenticator: AuthInterceptor(ref: ref),
    );

    return _$NotificationApi(client);
  }

  @Get(
    path: '/users/{id}/notification/{deviceId}',
  )
  Future<Response<Map<String, dynamic>>> getNotification({
    @Header('If-None-Match') required String ifNoneMatch,
    @Path('id') required String userId,
    @Path('deviceId') required String? deviceId,
  });

  @Post(
    path: '/users/{id}/notification',
  )
  Future<Response<Map<String, dynamic>>> createNotification({
    @Path('id') required String userId,
    @Body() required Map<String, dynamic> data,
  });

  @Put(
    path: '/users/{id}/notification/{deviceId}',
  )
  Future<Response<Map<String, dynamic>>> updateNotification({
    @Path('id') required String userId,
    @Path() required String? deviceId,
    @Body() required Map<String, dynamic> data,
  });

  @Delete(
    path: '/users/{id}/notification/{deviceId}',
  )
  Future<Response<Map<String, dynamic>>> deleteNotification({
    @Path('id') required String userId,
    @Path() required String? deviceId,
  });
}
