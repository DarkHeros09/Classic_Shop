import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:classic_shop/src/features/categories/data/category_api.dart';
import 'package:classic_shop/src/features/categories/data/category_dto.dart';
import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/data/remote_response.dart';
import 'package:classic_shop/src/features/core/data/response_headers.dart';
import 'package:classic_shop/src/features/core/data/response_headers_cache.dart';

abstract class ICategoryRemoteService {
  Future<RemoteResponse<List<CategoryDTO?>>> fetchCategories({
    required Uri requestUri,
  });
}

class CategoryRemoteService implements ICategoryRemoteService {
  CategoryRemoteService(
    this._categoryApi,
    this._headersCache,
  );

  final CategoryApi _categoryApi;
  final ResponseHeadersCache _headersCache;

  @override
  Future<RemoteResponse<List<CategoryDTO>>> fetchCategories({
    required Uri requestUri,
  }) async {
    final previousHeaders = await _headersCache.getHeaders(requestUri);
    try {
      late final Response<List<Map<String, dynamic>>> response;

      response = await _categoryApi.getCategories(
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
          convertedBody?.map(CategoryDTO.fromJson).toList() ?? [],
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
