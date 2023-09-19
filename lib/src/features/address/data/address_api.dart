import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:classic_shop/src/features/auth/data/auth_interceptor.dart';
// ignore: depend_on_referenced_packages
import 'package:http/io_client.dart';

part 'address_api.chopper.dart';

@ChopperApi(baseUrl: 'http://192.168.10.170:8080/usr/v1')
abstract class AddressApi extends ChopperService {
  static AddressApi create() {
    final client = ChopperClient(
      client: IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 10),
      ),
      services: [_$AddressApi()],
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
        AuthInterceptor(),
      ],
      authenticator: AuthInterceptor(),
    );

    return _$AddressApi(client);
  }

  @Post(
    path: '/users/{id}/addresses',
  )
  Future<Response<Map<String, dynamic>>> createAddress({
    @Path('id') required String userId,
    @Body() required Map<String, dynamic> data,
  });

  @Get(
    path: '/users/{id}/addresses',
  )
  Future<Response<List<Map<String, dynamic>>>> listAddresses({
    @Header('If-None-Match') required String ifNoneMatch,
    @Path('id') required String userId,
    @Query('page_id') required int pageId,
    @Query('page_size') required int pageSize,
  });

  @Put(
    path: '/users/{id}/addresses/{addressId}',
  )
  Future<Response<Map<String, dynamic>>> updateAddress({
    @Path('id') required String userId,
    @Path() required String addressId,
    @Body() required Map<String, dynamic> data,
  });

  @Delete(
    path: '/users/{id}/addresses/{addressId}',
  )
  Future<Response<Map<String, dynamic>>> deleteAddress({
    @Path('id') required String userId,
    @Path() required String addressId,
  });
}
