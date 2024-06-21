import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:classic_shop/src/features/brands/data/brand_api.dart';
import 'package:classic_shop/src/features/brands/data/brand_dto.dart';
import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/data/remote_response.dart';
import 'package:classic_shop/src/features/core/data/response_headers.dart';
import 'package:classic_shop/src/features/core/data/response_headers_cache.dart';

abstract class IBrandRemoteService {
  Future<RemoteResponse<List<BrandDTO?>>> fetchBrands({
    required Uri requestUri,
  });
}

class BrandRemoteService implements IBrandRemoteService {
  BrandRemoteService(
    this._brandApi,
    this._headersCache,
  );

  final BrandApi _brandApi;
  final ResponseHeadersCache _headersCache;

  @override
  Future<RemoteResponse<List<BrandDTO>>> fetchBrands({
    required Uri requestUri,
  }) async {
    final previousHeaders = await _headersCache.getHeaders(requestUri);
    try {
      late final Response<List<Map<String, dynamic>>> response;

      response = await _brandApi.getBrands(
        ifNoneMatch: previousHeaders?.etag ?? '',
      );

      if (response.statusCode == 304) {
        return const RemoteResponse.notModified(
          nextAvailable: false,
        );
      }

      if (response.isSuccessful) {
        final headers = ResponseHeaders.parse(response);
        await _headersCache.saveHeaders(requestUri, headers);
        final convertedBody = response.body;
        return RemoteResponse.withNewData(
          convertedBody?.map(BrandDTO.fromJson).toList() ?? [],
          nextAvailable: false,
        );
      } else {
        throw RestApiException(response.statusCode);
      }
    } on SocketException {
      return const RemoteResponse.noConnection();
    }
  }
}
