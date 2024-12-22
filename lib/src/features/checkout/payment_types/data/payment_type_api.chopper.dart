// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_type_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$PaymentTypeApi extends PaymentTypeApi {
  _$PaymentTypeApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = PaymentTypeApi;

  @override
  Future<Response<List<Map<String, dynamic>>>> listPaymentTypes(
      {required String userId}) {
    final Uri $url = Uri.parse(
        'http://192.168.0.155:8080/usr/v1/users/${userId}/payment-types');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<Map<String, dynamic>>, Map<String, dynamic>>($request);
  }
}
