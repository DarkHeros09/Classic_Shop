import 'dart:io';
import 'dart:isolate';

import 'package:chopper/chopper.dart';
import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/data/remote_response.dart';
import 'package:classic_shop/src/features/size/data/size_api.dart';
import 'package:classic_shop/src/features/size/data/size_dto.dart';

abstract class ISizeRemoteService {
  Future<RemoteResponse<List<SizeDTO>>> listSizesByProductItemId({
    // required Uri requestUri,
    required int productItemId,
  });
}

class SizeRemoteService implements ISizeRemoteService {
  SizeRemoteService(
    this._sizeApi,
    // this._headersCache,
  );

  final SizeApi _sizeApi;
  // final ResponseHeadersCache _headersCache;

  @override
  Future<RemoteResponse<List<SizeDTO>>> listSizesByProductItemId({
    // required Uri requestUri,
    required int productItemId,
  }) async {
    // final previousHeaders = await _headersCache.getHeaders(requestUri);
    try {
      late final Response<List<Map<String, dynamic>>> response;

      response = await _sizeApi.listSizesByProductItemId(
        // ifNoneMatch: previousHeaders?.etag ?? '',
        productItemId: productItemId.toString(),
      );

      // if (response.statusCode == 304) {
      //   return const RemoteResponse.notModified(
      //     nextAvailable: false,
      //   );
      // }

      if (response.isSuccessful) {
        // final headers = ResponseHeaders.parse(response);
        // await _headersCache.saveHeaders(requestUri, headers);
        final convertedBody = response.body;
        if (convertedBody == null || convertedBody.isEmpty) {
          return const RemoteResponse.noContent();
        }

        final sizeDtos = await Isolate.run(
          () => convertedBody.map(SizeDTO.fromJson).toList(),
        );
        return RemoteResponse.withNewData(
          sizeDtos,
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
