// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_order_items_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
final class _$ShopOrderItemsApi extends ShopOrderItemsApi {
  _$ShopOrderItemsApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ShopOrderItemsApi;

  @override
  Future<Response<List<Map<String, dynamic>>>> listShopOrderItems({
    required String ifNoneMatch,
    required String userId,
    required String orderId,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.10.170:8080/usr/v1/users/${userId}/shop-order-items/${orderId}');
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
