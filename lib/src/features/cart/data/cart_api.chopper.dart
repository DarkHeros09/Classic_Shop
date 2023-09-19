// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
final class _$CartApi extends CartApi {
  _$CartApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = CartApi;

  @override
  Future<Response<List<Map<String, dynamic>>>> getCartItems({
    required String ifNoneMatch,
    required String userId,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.10.170:8080/usr/v1/users/${userId}/carts/items');
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

  @override
  Future<Response<Map<String, dynamic>>> createCartItem({
    required String userId,
    required String cartId,
    required Map<String, dynamic> data,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.10.170:8080/usr/v1/users/${userId}/carts/${cartId}/items');
    final $body = data;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<Map<String, dynamic>>> updateCartItem({
    required String userId,
    required String cartId,
    required String shoppingCartItemId,
    required Map<String, dynamic> data,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.10.170:8080/usr/v1/users/${userId}/carts/${cartId}/items/${shoppingCartItemId}');
    final $body = data;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<Map<String, dynamic>>> deleteCartItem({
    required String userId,
    required String cartId,
    required String shoppingCartItemId,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.10.170:8080/usr/v1/users/${userId}/carts/${cartId}/items/${shoppingCartItemId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<Map<String, dynamic>>> deleteAllCartItems({
    required String userId,
    required String cartId,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.10.170:8080/usr/v1/users/${userId}/carts/${cartId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }
}
