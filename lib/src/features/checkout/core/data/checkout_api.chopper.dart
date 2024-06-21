// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$CheckoutApi extends CheckoutApi {
  _$CheckoutApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = CheckoutApi;

  @override
  Future<Response<Map<String, dynamic>>> checkout({
    required String userId,
    required String cartId,
    required Map<String, dynamic> data,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.1.104:8080/usr/v1/users/${userId}/carts/${cartId}/purchase');
    final $body = data;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }
}
