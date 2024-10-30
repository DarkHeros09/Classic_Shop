import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:classic_shop/gen/env.g.dart';
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

@ChopperApi(baseUrl: 'http://${Env.httpAddress}/api/v1')
abstract class ProductApi extends ChopperService {
  static ProductApi create() {
    final client = ChopperClient(
      client: IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 10),
      ),
      services: [_$ProductApi()],
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
        // AuthInterceptor(ref: ref),
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
    @Query('is_featured') bool? isFeatured,
    @Query('order_by_low_price') bool? orderByLowPrice,
    @Query('order_by_high_price') bool? orderByHighPrice,
  });

  @Get(
    path: '/product-items-next-page',
    headers: normalheaders,
  )
  Future<Response<List<Map<String, dynamic>>>> getProductsNextPage({
    @Header('If-None-Match') required String ifNoneMatch,
    @Query('product_item_cursor') required int lastItemId,
    @Query('product_cursor') required int lastProductId,
    @Query('limit') required int pageSize,
    @Query('category_id') int? categoryId,
    @Query('brand_id') int? brandId,
    @Query('size_id') int? sizeId,
    @Query('color_id') int? colorId,
    @Query('is_new') bool? isNew,
    @Query('is_promoted') bool? isPromoted,
    @Query('is_featured') bool? isFeatured,
    @Query('order_by_low_price') bool? orderByLowPrice,
    @Query('order_by_high_price') bool? orderByHighPrice,
  });

  @Get(
    path: '/products-best-sellers',
  )
  Future<Response<List<Map<String, dynamic>>>> getBestSellers({
    @Header('If-None-Match') required String ifNoneMatch,
    @Query('limit') required int pageSize,
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
    @Query('product_item_cursor') required int lastItemId,
    @Query('product_cursor') required int lastProductId,
    @Query('limit') required int pageSize,
  });

  @Get(
    path: '/product-items-with-promotions',
    headers: normalheaders,
  )
  Future<Response<List<Map<String, dynamic>>>> getProductsWithPromotions({
    @Header('If-None-Match') required String ifNoneMatch,
    @Query('product_id') required int productId,
    @Query('limit') required int pageSize,
  });

  @Get(
    path: '/product-items-with-promotions-next-page',
    headers: normalheaders,
  )
  Future<Response<List<Map<String, dynamic>>>>
      getProductsWithPromotionsNextPage({
    @Header('If-None-Match') required String ifNoneMatch,
    @Query('product_item_cursor') required int lastItemId,
    @Query('product_cursor') required int lastProductId,
    @Query('limit') required int pageSize,
  });

  @Get(
    path: '/product-items-with-brand-promotions',
    headers: normalheaders,
  )
  Future<Response<List<Map<String, dynamic>>>> getProductsWithBrandPromotions({
    @Header('If-None-Match') required String ifNoneMatch,
    @Query('brand_id') required int brandId,
    @Query('limit') required int pageSize,
  });

  @Get(
    path: '/product-items-with-brand-promotions-next-page',
    headers: normalheaders,
  )
  Future<Response<List<Map<String, dynamic>>>>
      getProductsWithBrandPromotionsNextPage({
    @Header('If-None-Match') required String ifNoneMatch,
    @Query('brand_id') required int brandId,
    @Query('product_item_cursor') required int lastItemId,
    @Query('product_cursor') required int lastProductId,
    @Query('limit') required int pageSize,
  });

  @Get(
    path: '/product-items-with-category-promotions',
    headers: normalheaders,
  )
  Future<Response<List<Map<String, dynamic>>>>
      getProductsWithCategoryPromotions({
    @Header('If-None-Match') required String ifNoneMatch,
    @Query('category_id') required int categoryId,
    @Query('limit') required int pageSize,
  });

  @Get(
    path: '/product-items-with-category-promotions-next-page',
    headers: normalheaders,
  )
  Future<Response<List<Map<String, dynamic>>>>
      getProductsWithCategoryPromotionsNextPage({
    @Header('If-None-Match') required String ifNoneMatch,
    @Query('category_id') required int categoryId,
    @Query('product_item_cursor') required int lastItemId,
    @Query('product_cursor') required int lastProductId,
    @Query('limit') required int pageSize,
  });
}
