import 'dart:developer';
import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/data/pagination_config.dart';
import 'package:classic_shop/src/features/core/data/remote_response.dart';
import 'package:classic_shop/src/features/core/data/response_headers.dart';
import 'package:classic_shop/src/features/core/data/response_headers_cache.dart';
import 'package:classic_shop/src/features/products/core/data/product_api.dart';
import 'package:classic_shop/src/features/products/core/data/product_dto.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';
import 'package:flutter/foundation.dart';

abstract class ProductRemoteService {
  ProductRemoteService(this._productApi, this._headersCache);

  final ProductApi _productApi;
  final ResponseHeadersCache _headersCache;

  Future<RemoteResponse<List<ProductDTO>>> fetchProducts({
    required ProductsFunction productsFunction,
    required Uri requestUri,
    int? categoryId,
    int? brandId,
    int? sizeId,
    int? colorId,
    int lastItemId = 0,
    String query = '',
    int? pageSize,
    bool? isNew,
    bool? isPromoted,
  }) async {
    final previousHeaders = await _headersCache.getHeaders(requestUri);
    debugPrint(_productApi.client.baseUrl.authority); //!
    debugPrint(requestUri.toString()); //!
    debugPrint('ETag :'); //!
    debugPrint(previousHeaders?.etag); //!
    try {
      late final Response<List<Map<String, dynamic>>> response;
      switch (productsFunction) {
        case ProductsFunction.getProducts:
          response = await _productApi.getProducts(
            ifNoneMatch: previousHeaders?.etag ?? '',
            pageSize: pageSize ?? PaginationConfig.itemsPerPage,
            categoryId: categoryId,
            brandId: brandId,
            colorId: colorId,
            sizeId: sizeId,
            isNew: isNew,
            isPromoted: isPromoted,
          );
          debugPrint('response: ');
          debugPrint(response.toString());

        case ProductsFunction.getProductsNextPage:
          response = await _productApi.getProductsNextPage(
            ifNoneMatch: previousHeaders?.etag ?? '',
            pageSize: PaginationConfig.itemsPerPage,
            lastItemId: lastItemId,
            categoryId: categoryId,
            brandId: brandId,
            colorId: colorId,
            sizeId: sizeId,
            isNew: isNew,
            isPromoted: isPromoted,
          );
          debugPrint('response Next: ');
          debugPrint(response.toString());
        case ProductsFunction.searchProducts:
          response = await _productApi.searchProducts(
            query: query,
            pageSize: PaginationConfig.itemsPerPage,
          );
        case ProductsFunction.searchProductsNextPage:
          response = await _productApi.searchProductsNextPage(
            query: query,
            pageSize: PaginationConfig.itemsPerPage,
            lastItemId: lastItemId,
          );
      }
      debugPrint('Body: ${response.body}'); //!
      debugPrint('Headers:');
      debugPrint(response.base.request?.headers.toString()); //!

      if (response.statusCode == 304) {
        return RemoteResponse.notModified(
          maxPage: previousHeaders?.maxPage ?? 0,
        );
      }

      if (response.isSuccessful) {
        final headers = ResponseHeaders.parse(response);
        await _headersCache.saveHeaders(requestUri, headers);
        // response as Response<List<Map<String, dynamic>>>;
        final convertedBody = response.body!.map(ProductDTO.fromJson).toList();
        log('HEADDDD${headers.maxPage}');
        return RemoteResponse.withNewData(
          convertedBody,
          maxPage: headers.maxPage ?? 1,
        );
      } else {
        throw RestApiException(response.statusCode);
      }
    } on SocketException {
      return const RemoteResponse.noConnection();
    }
  }
}
