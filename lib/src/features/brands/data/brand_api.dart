import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:classic_shop/gen/env.g.dart';
// ignore: depend_on_referenced_packages
import 'package:http/io_client.dart';

part 'brand_api.chopper.dart';

@ChopperApi(baseUrl: 'http://${Env.httpAddress}/api/v1')
abstract class BrandApi extends ChopperService {
  static BrandApi create() {
    final client = ChopperClient(
      client: IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 10),
      ),
      services: [_$BrandApi()],
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
      ],
    );

    return _$BrandApi(client);
  }

  @Get(
    path: '/brands',
  )
  Future<Response<List<Map<String, dynamic>>>> getBrands({
    @Header('If-None-Match') required String ifNoneMatch,
  });
}
