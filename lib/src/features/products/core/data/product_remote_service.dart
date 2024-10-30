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
    int? productId,
    int? categoryId,
    int? brandId,
    int? sizeId,
    int? colorId,
    int? lastItemId,
    int? lastProductId,
    String? query,
    int? pageSize,
    bool? isNew,
    bool? isPromoted,
    bool? isFeatured,
    bool? orderByLowPrice,
    bool? orderByHighPrice,
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
            isFeatured: isFeatured,
            orderByLowPrice: orderByLowPrice,
            orderByHighPrice: orderByHighPrice,
          );
          debugPrint('response: ');
          debugPrint(response.toString());

        case ProductsFunction.getProductsNextPage:
          response = await _productApi.getProductsNextPage(
            ifNoneMatch: previousHeaders?.etag ?? '',
            pageSize: pageSize ?? PaginationConfig.itemsPerPage,
            lastItemId: lastItemId ?? 0,
            lastProductId: lastProductId ?? 0,
            categoryId: categoryId,
            brandId: brandId,
            colorId: colorId,
            sizeId: sizeId,
            isNew: isNew,
            isPromoted: isPromoted,
            isFeatured: isFeatured,
            orderByLowPrice: orderByLowPrice,
            orderByHighPrice: orderByHighPrice,
          );
          debugPrint('response Next: ');
          debugPrint(response.toString());

        case ProductsFunction.getBestSellers:
          response = await _productApi.getBestSellers(
            ifNoneMatch: previousHeaders?.etag ?? '',
            pageSize: pageSize ?? PaginationConfig.itemsPerPage,
          );

        case ProductsFunction.searchProducts:
          response = await _productApi.searchProducts(
            query: query ?? '',
            pageSize: pageSize ?? PaginationConfig.itemsPerPage,
          );

        case ProductsFunction.searchProductsNextPage:
          response = await _productApi.searchProductsNextPage(
            query: query ?? '',
            pageSize: pageSize ?? PaginationConfig.itemsPerPage,
            lastItemId: lastItemId ?? 0,
            lastProductId: lastProductId ?? 0,
          );

        case ProductsFunction.getProductsWithPromotions:
          response = await _productApi.getProductsWithPromotions(
            ifNoneMatch: previousHeaders?.etag ?? '',
            productId: productId ?? 0,
            pageSize: pageSize ?? PaginationConfig.itemsPerPage,
          );

        case ProductsFunction.getProductsWithPromotionsNextPage:
          response = await _productApi.getProductsWithPromotionsNextPage(
            ifNoneMatch: previousHeaders?.etag ?? '',
            lastItemId: lastItemId ?? 0,
            lastProductId: lastProductId ?? 0,
            pageSize: pageSize ?? PaginationConfig.itemsPerPage,
          );

        case ProductsFunction.getProductsWithBrandPromotions:
          response = await _productApi.getProductsWithBrandPromotions(
            ifNoneMatch: previousHeaders?.etag ?? '',
            brandId: brandId ?? 0,
            pageSize: pageSize ?? PaginationConfig.itemsPerPage,
          );

        case ProductsFunction.getProductsWithBrandPromotionsNextPage:
          response = await _productApi.getProductsWithBrandPromotionsNextPage(
            ifNoneMatch: previousHeaders?.etag ?? '',
            brandId: brandId ?? 0,
            lastItemId: lastItemId ?? 0,
            lastProductId: lastProductId ?? 0,
            pageSize: pageSize ?? PaginationConfig.itemsPerPage,
          );

        case ProductsFunction.getProductsWithCategoryPromotions:
          response = await _productApi.getProductsWithCategoryPromotions(
            ifNoneMatch: previousHeaders?.etag ?? '',
            categoryId: categoryId ?? 0,
            pageSize: pageSize ?? PaginationConfig.itemsPerPage,
          );

        case ProductsFunction.getProductsWithCategoryPromotionsNextPage:
          response =
              await _productApi.getProductsWithCategoryPromotionsNextPage(
            ifNoneMatch: previousHeaders?.etag ?? '',
            categoryId: categoryId ?? 0,
            lastItemId: lastItemId ?? 0,
            lastProductId: lastProductId ?? 0,
            pageSize: pageSize ?? PaginationConfig.itemsPerPage,
          );
      }
      debugPrint('Body: ${response.body}'); //!
      debugPrint('Headers:');
      debugPrint(response.base.request?.headers.toString()); //!

      if (response.statusCode == 304) {
        debugPrint('ZXZX304');
        return RemoteResponse.notModified(
          nextAvailable: previousHeaders?.nextAvailable ?? false,
        );
      }

      if (response.statusCode == 204) {
        debugPrint('ZXZX204');
        return const RemoteResponse.noContent();
      }

      if (response.statusCode == 200) {
        debugPrint('ZXZX200');
        debugPrint('ZXZXresponse is ${response.statusCode}');
        if (response.body!.isEmpty) {
          debugPrint('ZXZX204');
          return const RemoteResponse.noContent();
        }
        final headers = ResponseHeaders.parse(response);
        await _headersCache.saveHeaders(requestUri, headers);
        // response as Response<List<Map<String, dynamic>>>;
        final convertedBody =
            response.body!.map(ProductDTOMapper.fromJson).toList();
        log('HEADDDD${headers.nextAvailable}');
        return RemoteResponse.withNewData(
          convertedBody,
          nextAvailable: headers.nextAvailable ?? true,
        );
      } else {
        debugPrint('ZXZXERR');
        throw RestApiException(response.statusCode);
      }
    } on SocketException {
      debugPrint('ZXZXNOCONN');
      return const RemoteResponse.noConnection();
    }
  }
}
