import 'dart:io';

import 'package:chopper/chopper.dart';
// ignore: depend_on_referenced_packages
import 'package:http/io_client.dart';

part 'text_banner_api.chopper.dart';

@ChopperApi(baseUrl: 'http://192.168.10.170:8080/api/v1')
abstract class TextBannerApi extends ChopperService {
  static TextBannerApi create() {
    final client = ChopperClient(
      client: IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 10),
      ),
      services: [_$TextBannerApi()],
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
      ],
    );

    return _$TextBannerApi(client);
  }

  @Get(
    path: '/text-banners',
  )
  Future<Response<List<Map<String, dynamic>>>> getTextBanners({
    @Header('If-None-Match') required String ifNoneMatch,
  });
}
