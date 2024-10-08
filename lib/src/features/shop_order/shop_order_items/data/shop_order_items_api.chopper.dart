// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_order_items_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ShopOrderItemsApi extends ShopOrderItemsApi {
  _$ShopOrderItemsApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ShopOrderItemsApi;

  @override
  Future<Response<List<Map<String, dynamic>>>> listShopOrderItems({
    required String ifNoneMatch,
    required String userId,
    required String orderId,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.1.105:8080/usr/v1/users/${userId}/shop-order-items/${orderId}');
    final Map<String, String> $headers = {
      'If-None-Match': ifNoneMatch,
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
