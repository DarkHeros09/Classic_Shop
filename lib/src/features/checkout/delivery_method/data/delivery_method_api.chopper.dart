// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_method_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$DeliveryMethodApi extends DeliveryMethodApi {
  _$DeliveryMethodApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = DeliveryMethodApi;

  @override
  Future<Response<List<Map<String, dynamic>>>> listDeliveryMethods(
      {required String userId}) {
    final Uri $url = Uri.parse(
        'http://192.168.0.155:8080/usr/v1/users/${userId}/shipping-method');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<Map<String, dynamic>>, Map<String, dynamic>>($request);
  }
}
