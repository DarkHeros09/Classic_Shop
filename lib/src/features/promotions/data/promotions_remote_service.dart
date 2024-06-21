import 'dart:io';

import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/data/remote_response.dart';
import 'package:classic_shop/src/features/core/data/response_headers.dart';
import 'package:classic_shop/src/features/core/data/response_headers_cache.dart';
import 'package:classic_shop/src/features/promotions/data/brand_promotions_dto.dart';
import 'package:classic_shop/src/features/promotions/data/category_promotions_dto.dart';
import 'package:classic_shop/src/features/promotions/data/product_promotions_dto.dart';
import 'package:classic_shop/src/features/promotions/data/promotions_api.dart';
import 'package:classic_shop/src/features/promotions/data/promotions_dto.dart';
import 'package:flutter/foundation.dart';

class PromotionsRemoteService {
  PromotionsRemoteService(this._promotionsApi, this._headersCache);

  final PromotionsApi _promotionsApi;
  final ResponseHeadersCache _headersCache;

  Future<RemoteResponse<PromotionsDTO>> fetchPromotions({
    required Uri productPromotionsRequestUri,
    required Uri brandPromotionsRequestUri,
    required Uri categoryPromotionsRequestUri,
  }) async {
    final previousHeaders = await Future.wait([
      _headersCache.getHeaders(productPromotionsRequestUri),
      _headersCache.getHeaders(brandPromotionsRequestUri),
      _headersCache.getHeaders(categoryPromotionsRequestUri),
    ]);

    try {
      // late final Response<List<Map<String, dynamic>>> response;
      final response = await Future.wait([
        _promotionsApi.getProductPromotions(
          ifNoneMatch: previousHeaders[0]?.etag ?? '',
        ),
        _promotionsApi.getBrandPromotions(
          ifNoneMatch: previousHeaders[1]?.etag ?? '',
        ),
        _promotionsApi.getCategoryPromotions(
          ifNoneMatch: previousHeaders[2]?.etag ?? '',
        ),
      ]);

      if (response[0].statusCode == 304 &&
          response[1].statusCode == 304 &&
          response[2].statusCode == 304) {
        debugPrint('PPTTP304');
        return const RemoteResponse.notModified(
          nextAvailable: false,
        );
      }

      // for (var i = 0; i < response.length; i++) {
      //   if (response[i].isSuccessful) {}
      // }

      if (response[0].isSuccessful ||
          response[1].isSuccessful ||
          response[2].isSuccessful) {
        debugPrint('PPTTP200');
        final productPromotionsHeaders = response[0].isSuccessful
            ? ResponseHeaders.parse(response[0])
            : null;
        final brandPromotionsHeaders = response[1].isSuccessful
            ? ResponseHeaders.parse(response[1])
            : null;
        final categoryPromotionsHeaders = response[2].isSuccessful
            ? ResponseHeaders.parse(response[2])
            : null;

        await Future.wait([
          if (productPromotionsHeaders != null)
            _headersCache.saveHeaders(
              productPromotionsRequestUri,
              productPromotionsHeaders,
            ),
          if (brandPromotionsHeaders != null)
            _headersCache.saveHeaders(
              brandPromotionsRequestUri,
              brandPromotionsHeaders,
            ),
          if (categoryPromotionsHeaders != null)
            _headersCache.saveHeaders(
              categoryPromotionsRequestUri,
              categoryPromotionsHeaders,
            ),
        ]);
        // response as Response<List<Map<String, dynamic>>>;
        final productPromotionsConvertedBody =
            response[0].body?.map(ProductPromotionsDTO.fromJson).toList();
        final brandPromotionsConvertedBody =
            response[1].body?.map(BrandPromotionsDTO.fromJson).toList();
        final categoryPromotionsConvertedBody =
            response[2].body?.map(CategoryPromotionsDTO.fromJson).toList();

        final promotions = PromotionsDTO(
          productPromotions: productPromotionsConvertedBody,
          brandPromotions: brandPromotionsConvertedBody,
          categoryPromotions: categoryPromotionsConvertedBody,
        );

        debugPrint('DATAPROMO: $promotions');

        return RemoteResponse.withNewData(
          promotions,
          nextAvailable: true,
        );
      } else {
        if (!response[0].isSuccessful) {
          throw RestApiException(response[0].statusCode);
        }
        if (!response[1].isSuccessful) {
          throw RestApiException(response[1].statusCode);
        }
        if (!response[2].isSuccessful) {
          throw RestApiException(response[2].statusCode);
        }
        return const RemoteResponse.noConnection();
      }
    } on SocketException {
      return const RemoteResponse.noConnection();
    }
  }
}
