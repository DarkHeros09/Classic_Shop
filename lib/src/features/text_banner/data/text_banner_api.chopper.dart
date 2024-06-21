// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_banner_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$TextBannerApi extends TextBannerApi {
  _$TextBannerApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = TextBannerApi;

  @override
  Future<Response<List<Map<String, dynamic>>>> getTextBanners(
      {required String ifNoneMatch}) {
    final Uri $url = Uri.parse('http://192.168.1.104:8080/api/v1/text-banners');
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
