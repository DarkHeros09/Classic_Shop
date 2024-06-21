import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:classic_shop/gen/env.g.dart';
// ignore: depend_on_referenced_packages
import 'package:http/io_client.dart';

part 'promotions_api.chopper.dart';

const normalheaders = {
  'Content-Type': 'application/json',
};

const authenticatedHeaders = {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer {accessToken}',
};

@ChopperApi(baseUrl: 'http://${Env.httpAddress}/api/v1')
abstract class PromotionsApi extends ChopperService {
  static PromotionsApi create() {
    final client = ChopperClient(
      // baseUrl: Uri.http('${Env.httpAddress}/api/v1'),
      client: IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 10),
      ),
      services: [_$PromotionsApi()],
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
        // AuthInterceptor(ref: ref),
      ],
    );

    return _$PromotionsApi(client);
  }

  @Get(
    path: '/product-promotions-images',
    headers: normalheaders,
  )
  Future<Response<List<Map<String, dynamic>>>> getProductPromotions({
    @Header('If-None-Match') required String ifNoneMatch,
  });

  @Get(
    path: '/brand-promotions-images',
    headers: normalheaders,
  )
  Future<Response<List<Map<String, dynamic>>>> getBrandPromotions({
    @Header('If-None-Match') required String ifNoneMatch,
  });

  @Get(
    path: '/category-promotions-images',
    headers: normalheaders,
  )
  Future<Response<List<Map<String, dynamic>>>> getCategoryPromotions({
    @Header('If-None-Match') required String ifNoneMatch,
  });
}
