import 'dart:io';

import 'package:chopper/chopper.dart';
// ignore: depend_on_referenced_packages
import 'package:http/io_client.dart';

part 'category_api.chopper.dart';

@ChopperApi(baseUrl: 'http://192.168.10.170:8080/api/v1')
abstract class CategoryApi extends ChopperService {
  static CategoryApi create() {
    final client = ChopperClient(
      client: IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 10),
      ),
      services: [_$CategoryApi()],
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
      ],
    );

    return _$CategoryApi(client);
  }

  @Get(
    path: '/categories',
  )
  Future<Response<List<Map<String, dynamic>>>> getCategories({
    @Header('If-None-Match') required String ifNoneMatch,
  });
}
