// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ProductApi extends ProductApi {
  _$ProductApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ProductApi;

  @override
  Future<Response<List<Map<String, dynamic>>>> getProducts({
    required String ifNoneMatch,
    required int pageSize,
    int? categoryId,
    int? brandId,
    int? sizeId,
    int? colorId,
    bool? isNew,
    bool? isPromoted,
    bool? orderByLowPrice,
    bool? orderByHighPrice,
  }) {
    final Uri $url =
        Uri.parse('http://192.168.1.105:8080/api/v1/product-items-v2');
    final Map<String, dynamic> $params = <String, dynamic>{
      'limit': pageSize,
      'category_id': categoryId,
      'brand_id': brandId,
      'size_id': sizeId,
      'color_id': colorId,
      'is_new': isNew,
      'is_promoted': isPromoted,
      'order_by_low_price': orderByLowPrice,
      'order_by_high_price': orderByHighPrice,
    };
    final Map<String, String> $headers = {
      'If-None-Match': ifNoneMatch,
      'Content-Type': 'application/json',
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client
        .send<List<Map<String, dynamic>>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<List<Map<String, dynamic>>>> getProductsNextPage({
    required String ifNoneMatch,
    required int lastItemId,
    required int lastProductId,
    required int pageSize,
    int? categoryId,
    int? brandId,
    int? sizeId,
    int? colorId,
    bool? isNew,
    bool? isPromoted,
    bool? orderByLowPrice,
    bool? orderByHighPrice,
  }) {
    final Uri $url =
        Uri.parse('http://192.168.1.105:8080/api/v1/product-items-next-page');
    final Map<String, dynamic> $params = <String, dynamic>{
      'product_item_cursor': lastItemId,
      'product_cursor': lastProductId,
      'limit': pageSize,
      'category_id': categoryId,
      'brand_id': brandId,
      'size_id': sizeId,
      'color_id': colorId,
      'is_new': isNew,
      'is_promoted': isPromoted,
      'order_by_low_price': orderByLowPrice,
      'order_by_high_price': orderByHighPrice,
    };
    final Map<String, String> $headers = {
      'If-None-Match': ifNoneMatch,
      'Content-Type': 'application/json',
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client
        .send<List<Map<String, dynamic>>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<List<Map<String, dynamic>>>> searchProducts({
    required String query,
    required int pageSize,
  }) {
    final Uri $url =
        Uri.parse('http://192.168.1.105:8080/api/v1/search-product-items');
    final Map<String, dynamic> $params = <String, dynamic>{
      'query': query,
      'limit': pageSize,
    };
    final Map<String, String> $headers = {
      'Content-Type': 'application/json',
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client
        .send<List<Map<String, dynamic>>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<List<Map<String, dynamic>>>> searchProductsNextPage({
    required String query,
    required int lastItemId,
    required int lastProductId,
    required int pageSize,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.1.105:8080/api/v1/search-product-items-next-page');
    final Map<String, dynamic> $params = <String, dynamic>{
      'query': query,
      'product_item_cursor': lastItemId,
      'product_cursor': lastProductId,
      'limit': pageSize,
    };
    final Map<String, String> $headers = {
      'Content-Type': 'application/json',
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client
        .send<List<Map<String, dynamic>>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<List<Map<String, dynamic>>>> getProductsWithPromotions({
    required String ifNoneMatch,
    required int productId,
    required int pageSize,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.1.105:8080/api/v1/product-items-with-promotions');
    final Map<String, dynamic> $params = <String, dynamic>{
      'product_id': productId,
      'limit': pageSize,
    };
    final Map<String, String> $headers = {
      'If-None-Match': ifNoneMatch,
      'Content-Type': 'application/json',
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client
        .send<List<Map<String, dynamic>>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<List<Map<String, dynamic>>>>
      getProductsWithPromotionsNextPage({
    required String ifNoneMatch,
    required int lastItemId,
    required int lastProductId,
    required int pageSize,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.1.105:8080/api/v1/product-items-with-promotions-next-page');
    final Map<String, dynamic> $params = <String, dynamic>{
      'product_item_cursor': lastItemId,
      'product_cursor': lastProductId,
      'limit': pageSize,
    };
    final Map<String, String> $headers = {
      'If-None-Match': ifNoneMatch,
      'Content-Type': 'application/json',
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client
        .send<List<Map<String, dynamic>>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<List<Map<String, dynamic>>>> getProductsWithBrandPromotions({
    required String ifNoneMatch,
    required int brandId,
    required int pageSize,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.1.105:8080/api/v1/product-items-with-brand-promotions');
    final Map<String, dynamic> $params = <String, dynamic>{
      'brand_id': brandId,
      'limit': pageSize,
    };
    final Map<String, String> $headers = {
      'If-None-Match': ifNoneMatch,
      'Content-Type': 'application/json',
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client
        .send<List<Map<String, dynamic>>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<List<Map<String, dynamic>>>>
      getProductsWithBrandPromotionsNextPage({
    required String ifNoneMatch,
    required int brandId,
    required int lastItemId,
    required int lastProductId,
    required int pageSize,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.1.105:8080/api/v1/product-items-with-brand-promotions-next-page');
    final Map<String, dynamic> $params = <String, dynamic>{
      'brand_id': brandId,
      'product_item_cursor': lastItemId,
      'product_cursor': lastProductId,
      'limit': pageSize,
    };
    final Map<String, String> $headers = {
      'If-None-Match': ifNoneMatch,
      'Content-Type': 'application/json',
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client
        .send<List<Map<String, dynamic>>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<List<Map<String, dynamic>>>>
      getProductsWithCategoryPromotions({
    required String ifNoneMatch,
    required int categoryId,
    required int pageSize,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.1.105:8080/api/v1/product-items-with-category-promotions');
    final Map<String, dynamic> $params = <String, dynamic>{
      'category_id': categoryId,
      'limit': pageSize,
    };
    final Map<String, String> $headers = {
      'If-None-Match': ifNoneMatch,
      'Content-Type': 'application/json',
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client
        .send<List<Map<String, dynamic>>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<List<Map<String, dynamic>>>>
      getProductsWithCategoryPromotionsNextPage({
    required String ifNoneMatch,
    required int categoryId,
    required int lastItemId,
    required int lastProductId,
    required int pageSize,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.1.105:8080/api/v1/product-items-with-category-promotions-next-page');
    final Map<String, dynamic> $params = <String, dynamic>{
      'category_id': categoryId,
      'product_item_cursor': lastItemId,
      'product_cursor': lastProductId,
      'limit': pageSize,
    };
    final Map<String, String> $headers = {
      'If-None-Match': ifNoneMatch,
      'Content-Type': 'application/json',
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client
        .send<List<Map<String, dynamic>>, Map<String, dynamic>>($request);
  }
}
