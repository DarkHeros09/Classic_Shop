// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_method_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_string_interpolations, unnecessary_brace_in_string_interps
final class _$DeliveryMethodApi extends DeliveryMethodApi {
  _$DeliveryMethodApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = DeliveryMethodApi;

  @override
  Future<Response<List<Map<String, dynamic>>>> listDeliveryMethods(
      {required String userId}) {
    final Uri $url = Uri.parse(
        'http://192.168.1.104:8080/usr/v1/users/${userId}/shipping-method');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<Map<String, dynamic>>, Map<String, dynamic>>($request);
  }
}
