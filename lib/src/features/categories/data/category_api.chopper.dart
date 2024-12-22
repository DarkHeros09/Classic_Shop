// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$CategoryApi extends CategoryApi {
  _$CategoryApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = CategoryApi;

  @override
  Future<Response<List<Map<String, dynamic>>>> getCategories(
      {required String ifNoneMatch}) {
    final Uri $url = Uri.parse('http://192.168.0.155:8080/api/v1/categories');
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
