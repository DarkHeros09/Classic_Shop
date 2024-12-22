// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$AddressApi extends AddressApi {
  _$AddressApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = AddressApi;

  @override
  Future<Response<Map<String, dynamic>>> createAddress({
    required String userId,
    required Map<String, dynamic> data,
  }) {
    final Uri $url =
        Uri.parse('http://192.168.0.155:8080/usr/v1/users/${userId}/addresses');
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
  Future<Response<List<Map<String, dynamic>>>> listAddresses({
    required String ifNoneMatch,
    required String userId,
    required int pageId,
    required int pageSize,
  }) {
    final Uri $url =
        Uri.parse('http://192.168.0.155:8080/usr/v1/users/${userId}/addresses');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page_id': pageId,
      'page_size': pageSize,
    };
    final Map<String, String> $headers = {
      'If-None-Match': ifNoneMatch,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client
        .send<List<Map<String, dynamic>>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<Map<String, dynamic>>> updateAddress({
    required String userId,
    required String addressId,
    required Map<String, dynamic> data,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.0.155:8080/usr/v1/users/${userId}/addresses/${addressId}');
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
  Future<Response<Map<String, dynamic>>> deleteAddress({
    required String userId,
    required String addressId,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.0.155:8080/usr/v1/users/${userId}/addresses/${addressId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }
}
