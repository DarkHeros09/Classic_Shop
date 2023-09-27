// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_string_interpolations, unnecessary_brace_in_string_interps
final class _$CategoryApi extends CategoryApi {
  _$CategoryApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = CategoryApi;

  @override
  Future<Response<List<Map<String, dynamic>>>> getCategories(
      {required String ifNoneMatch}) {
    final Uri $url = Uri.parse('http://192.168.1.104:8080/api/v1/categories');
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
