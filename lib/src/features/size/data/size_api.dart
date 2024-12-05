import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:classic_shop/gen/env.g.dart';
import 'package:http/io_client.dart';

part 'size_api.chopper.dart';

@ChopperApi(baseUrl: 'http://${Env.httpAddress}/api/v1')
abstract class SizeApi extends ChopperService {
  static SizeApi create() {
    final client = ChopperClient(
      client: IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 10),
      ),
      services: [_$SizeApi()],
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
      ],
    );

    return _$SizeApi(client);
  }

  @Get(
    path: '/sizes/{itemId}',
  )
  Future<Response<List<Map<String, dynamic>>>> listSizesByProductItemId({
    // @Header('If-None-Match') required String ifNoneMatch,
    @Path('itemId') required String productItemId,
  });
}
