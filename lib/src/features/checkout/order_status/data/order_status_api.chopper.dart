// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$OrderStatusApi extends OrderStatusApi {
  _$OrderStatusApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = OrderStatusApi;

  @override
  Future<Response<Map<String, dynamic>>> getOrderStatus({
    required String userId,
    required String statusId,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.0.155:8080/usr/v1/users/${userId}/order-status/${statusId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }
}
