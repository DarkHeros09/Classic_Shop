// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotions_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_string_interpolations, unnecessary_brace_in_string_interps
final class _$PromotionsApi extends PromotionsApi {
  _$PromotionsApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PromotionsApi;

  @override
  Future<Response<List<Map<String, dynamic>>>> getProductPromotions(
      {required String ifNoneMatch}) {
    final Uri $url =
        Uri.parse('http://192.168.1.104:8080/api/v1/product-promotions-images');
    final Map<String, String> $headers = {
      'If-None-Match': ifNoneMatch,
      'Content-Type': 'application/json',
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client
        .send<List<Map<String, dynamic>>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<List<Map<String, dynamic>>>> getBrandPromotions(
      {required String ifNoneMatch}) {
    final Uri $url =
        Uri.parse('http://192.168.1.104:8080/api/v1/brand-promotions-images');
    final Map<String, String> $headers = {
      'If-None-Match': ifNoneMatch,
      'Content-Type': 'application/json',
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client
        .send<List<Map<String, dynamic>>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<List<Map<String, dynamic>>>> getCategoryPromotions(
      {required String ifNoneMatch}) {
    final Uri $url = Uri.parse(
        'http://192.168.1.104:8080/api/v1/category-promotions-images');
    final Map<String, String> $headers = {
      'If-None-Match': ifNoneMatch,
      'Content-Type': 'application/json',
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client
        .send<List<Map<String, dynamic>>, Map<String, dynamic>>($request);
  }
}
