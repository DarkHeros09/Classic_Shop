import 'dart:io';

import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/data/remote_response.dart';
import 'package:classic_shop/src/features/core/data/response_headers.dart';
import 'package:classic_shop/src/features/core/data/response_headers_cache.dart';
import 'package:classic_shop/src/features/text_banner/data/text_banner_api.dart';
import 'package:classic_shop/src/features/text_banner/data/text_banner_dto.dart';

abstract class ITextBannerRemoteService {
  Future<RemoteResponse<List<TextBannerDTO?>>> fetchTextBanner({
    required Uri requestUri,
  });
}

class TextBannerRemoteService implements ITextBannerRemoteService {
  TextBannerRemoteService(
    this._cartApi,
    this._headersCache,
  );

  final TextBannerApi _cartApi;
  final ResponseHeadersCache _headersCache;

  @override
  Future<RemoteResponse<List<TextBannerDTO>>> fetchTextBanner({
    required Uri requestUri,
  }) async {
    final previousHeaders = await _headersCache.getHeaders(requestUri);
    try {
      final response = await _cartApi.getTextBanners(
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
          convertedBody?.map(TextBannerDTO.fromJson).toList() ?? [],
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
