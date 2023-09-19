// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
final class _$ProductApi extends ProductApi {
  _$ProductApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ProductApi;

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
  }) {
    final Uri $url =
        Uri.parse('http://192.168.10.170:8080/api/v1/product-items-v2');
    final Map<String, dynamic> $params = <String, dynamic>{
      'limit': pageSize,
      'category_id': categoryId,
      'brand_id': brandId,
      'size_id': sizeId,
      'color_id': colorId,
      'is_new': isNew,
      'is_promoted': isPromoted,
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
    required int pageSize,
    int? categoryId,
    int? brandId,
    int? sizeId,
    int? colorId,
    bool? isNew,
    bool? isPromoted,
  }) {
    final Uri $url =
        Uri.parse('http://192.168.10.170:8080/api/v1/product-items-next-page');
    final Map<String, dynamic> $params = <String, dynamic>{
      'cursor': lastItemId,
      'limit': pageSize,
      'category_id': categoryId,
      'brand_id': brandId,
      'size_id': sizeId,
      'color_id': colorId,
      'is_new': isNew,
      'is_promoted': isPromoted,
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
        Uri.parse('http://192.168.10.170:8080/api/v1/search-product-items');
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
    required int pageSize,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.10.170:8080/api/v1/search-product-items-next-page');
    final Map<String, dynamic> $params = <String, dynamic>{
      'query': query,
      'cursor': lastItemId,
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
}
