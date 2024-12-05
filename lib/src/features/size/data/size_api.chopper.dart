// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'size_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$SizeApi extends SizeApi {
  _$SizeApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = SizeApi;

  @override
  Future<Response<List<Map<String, dynamic>>>> listSizesByProductItemId(
      {required String productItemId}) {
    final Uri $url =
        Uri.parse('http://192.168.1.105:8080/api/v1/sizes/${productItemId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<Map<String, dynamic>>, Map<String, dynamic>>($request);
  }
}
