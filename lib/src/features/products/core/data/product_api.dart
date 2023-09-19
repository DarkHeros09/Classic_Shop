import 'dart:io';

import 'package:chopper/chopper.dart';
// ignore: depend_on_referenced_packages
import 'package:http/io_client.dart';

part 'product_api.chopper.dart';

const normalheaders = {
  'Content-Type': 'application/json',
};

const authenticatedHeaders = {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer {accessToken}',
};

@ChopperApi(baseUrl: 'http://192.168.10.170:8080/api/v1')
abstract class ProductApi extends ChopperService {
  static ProductApi create() {
    final client = ChopperClient(
      // baseUrl: Uri.http('192.168.10.170:8080/api/v1'),
      client: IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 10),
      ),
      services: [_$ProductApi()],
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
        // AuthInterceptor(),
      ],
    );

    return _$ProductApi(client);
  }

  @Get(
    path: '/product-items-v2',
    headers: normalheaders,
  )
  Future<Response<List<Map<String, dynamic>>>> getProducts({
    @Header('If-None-Match') required String ifNoneMatch,
    @Query('limit') required int pageSize,
    @Query('category_id') int? categoryId,
    @Query('brand_id') int? brandId,
    @Query('size_id') int? sizeId,
    @Query('color_id') int? colorId,
    @Query('is_new') bool? isNew,
    @Query('is_promoted') bool? isPromoted,
  });

  @Get(
    path: '/product-items-next-page',
    headers: normalheaders,
  )
  Future<Response<List<Map<String, dynamic>>>> getProductsNextPage({
    @Header('If-None-Match') required String ifNoneMatch,
    @Query('cursor') required int lastItemId,
    @Query('limit') required int pageSize,
    @Query('category_id') int? categoryId,
    @Query('brand_id') int? brandId,
    @Query('size_id') int? sizeId,
    @Query('color_id') int? colorId,
    @Query('is_new') bool? isNew,
    @Query('is_promoted') bool? isPromoted,
  });

  @Get(
    path: '/search-product-items',
    headers: normalheaders,
  )
  Future<Response<List<Map<String, dynamic>>>> searchProducts({
    @Query() required String query,
    @Query('limit') required int pageSize,
  });

  @Get(
    path: '/search-product-items-next-page',
    headers: normalheaders,
  )
  Future<Response<List<Map<String, dynamic>>>> searchProductsNextPage({
    @Query() required String query,
    @Query('cursor') required int lastItemId,
    @Query('limit') required int pageSize,
  });
}
