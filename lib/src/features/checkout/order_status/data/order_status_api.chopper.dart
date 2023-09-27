// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_string_interpolations, unnecessary_brace_in_string_interps
final class _$OrderStatusApi extends OrderStatusApi {
  _$OrderStatusApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = OrderStatusApi;

  @override
  Future<Response<Map<String, dynamic>>> getOrderStatus({
    required String userId,
    required String statusId,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.1.104:8080/usr/v1/users/${userId}/order-status/${statusId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }
}
