// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_type_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
final class _$PaymentTypeApi extends PaymentTypeApi {
  _$PaymentTypeApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PaymentTypeApi;

  @override
  Future<Response<List<Map<String, dynamic>>>> listPaymentTypes(
      {required String userId}) {
    final Uri $url = Uri.parse(
        'http://192.168.10.170:8080/usr/v1/users/${userId}/payment-types');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<Map<String, dynamic>>, Map<String, dynamic>>($request);
  }
}
