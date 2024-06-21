// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_order_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ShopOrderApi extends ShopOrderApi {
  _$ShopOrderApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ShopOrderApi;

  @override
  Future<Response<List<Map<String, dynamic>>>> listShopOrders({
    required String ifNoneMatch,
    required String userId,
    required int pageId,
    required int pageSize,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.1.104:8080/usr/v1/users/${userId}/shop-orders');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page_id': pageId,
      'page_size': pageSize,
    };
    final Map<String, String> $headers = {
      'If-None-Match': ifNoneMatch,
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
  Future<Response<List<Map<String, dynamic>>>> listShopOrdersV2({
    required String ifNoneMatch,
    required String userId,
    required int pageSize,
    String? orderStatus,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.1.104:8080/usr/v1/users/${userId}/shop-orders-v2');
    final Map<String, dynamic> $params = <String, dynamic>{
      'limit': pageSize,
      'order_status': orderStatus,
    };
    final Map<String, String> $headers = {
      'If-None-Match': ifNoneMatch,
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
  Future<Response<List<Map<String, dynamic>>>> listShopOrdersNextPage({
    required String ifNoneMatch,
    required String userId,
    required int lastItemId,
    required int pageSize,
    String? orderStatus,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.1.104:8080/usr/v1/users/${userId}/shop-orders-next-page');
    final Map<String, dynamic> $params = <String, dynamic>{
      'cursor': lastItemId,
      'limit': pageSize,
      'order_status': orderStatus,
    };
    final Map<String, String> $headers = {
      'If-None-Match': ifNoneMatch,
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
