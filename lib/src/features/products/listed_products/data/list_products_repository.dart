import 'package:classic_shop/gen/env.g.dart';
import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/data/pagination_config.dart';
import 'package:classic_shop/src/features/core/data/remote_response.dart';
import 'package:classic_shop/src/features/core/data/response_headers_cache.dart';
import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:classic_shop/src/features/products/core/data/product_dto.dart';
import 'package:classic_shop/src/features/products/core/data/product_extensions.dart';
import 'package:classic_shop/src/features/products/core/domain/product.dart';
import 'package:classic_shop/src/features/products/core/domain/product_failure.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';
import 'package:classic_shop/src/features/products/listed_products/data/list_products_local_service.dart';
import 'package:classic_shop/src/features/products/listed_products/data/list_products_remote_service.dart';
import 'package:dartz/dartz.dart';

class ListProductsRepository {
  ListProductsRepository(
    this._remoteService,
    this._localService,
    this._headersCache,
  );

  final ListProductsRemoteService _remoteService;
  final ListProductsLocalService _localService;
  final ResponseHeadersCache _headersCache;

  Map<String, String> _createQueryParams({
    int? lastItemId,
    int? lastProductId,
    int? productId,
    int? categoryId,
    int? brandId,
    int? sizeId,
    int? colorId,
    String? query,
    int? pageSize,
    bool? isNew,
    bool? isPromoted,
    bool? orderByLowPrice,
    bool? orderByHighPrice,
  }) {
    final pageSizeString = pageSize == null
        ? PaginationConfig.itemsPerPage.toString()
        : pageSize.toString();
    final queryParams = {
      'limit': pageSizeString,
    };
    if (lastItemId != null) {
      queryParams['last_item_id'] = lastItemId.toString();
    }
    if (lastProductId != null) {
      queryParams['last_product_id'] = lastProductId.toString();
    }
    if (query != null) {
      queryParams['query'] = query;
    }
    if (productId != null) {
      queryParams['product_id'] = categoryId.toString();
    }
    if (categoryId != null) {
      queryParams['category_id'] = categoryId.toString();
    }
    if (brandId != null) {
      queryParams['brand_id'] = brandId.toString();
    }
    if (colorId != null) {
      queryParams['color_id'] = colorId.toString();
    }
    if (sizeId != null) {
      queryParams['size_id'] = sizeId.toString();
    }
    if (isNew != null) {
      queryParams['is_new'] = isNew.toString();
    }
    if (isPromoted != null) {
      queryParams['is_promoted'] = isPromoted.toString();
    }
    if (orderByLowPrice != null) {
      queryParams['order_by_low_price'] = orderByLowPrice.toString();
    }
    if (orderByHighPrice != null) {
      queryParams['order_by_high_price'] = orderByHighPrice.toString();
    }
    return queryParams;
  }

  Future<Either<ProductFailure, Fresh<List<Product>>>> getProducts(
    int page, {
    required ProductsFunction productsFunction,
    int? lastItemId,
    int? lastProductId,
    int? productId,
    int? categoryId,
    int? brandId,
    int? sizeId,
    int? colorId,
    String? query,
    int? pageSize,
    bool? isNew,
    bool? isPromoted,
    bool? orderByLowPrice,
    bool? orderByHighPrice,
  }) async {
    try {
      late final RemoteResponse<List<ProductDTO>> remotePageProducts;
      late final Uri requestUri;
      final queryParams = _createQueryParams(
        lastItemId: lastItemId,
        lastProductId: lastProductId,
        pageSize: pageSize,
        productId: productId,
        brandId: brandId,
        categoryId: categoryId,
        colorId: colorId,
        sizeId: sizeId,
        isNew: isNew,
        isPromoted: isPromoted,
        orderByLowPrice: orderByLowPrice,
        orderByHighPrice: orderByHighPrice,
      );
      switch (productsFunction) {
        case ProductsFunction.getProducts:
          requestUri = Uri.http(
            Env.httpAddress,
            '/api/v1/product-items-V2',
            queryParams,
          );
          remotePageProducts = await _remoteService.getProducts(
            productsFunction: productsFunction,
            requestUri: requestUri,
            pageSize: pageSize,
            categoryId: categoryId,
            brandId: brandId,
            colorId: colorId,
            sizeId: sizeId,
            isNew: isNew,
            isPromoted: isPromoted,
            orderByLowPrice: orderByLowPrice,
            orderByHighPrice: orderByHighPrice,
          );

        case ProductsFunction.getProductsNextPage:
          requestUri = Uri.http(
            Env.httpAddress,
            '/api/v1/product-items-next-page',
            queryParams,
          );
          remotePageProducts = await _remoteService.getProducts(
            productsFunction: productsFunction,
            requestUri: requestUri,
            lastItemId: lastItemId,
            lastProductId: lastProductId,
            pageSize: pageSize,
            categoryId: categoryId,
            brandId: brandId,
            colorId: colorId,
            sizeId: sizeId,
            isNew: isNew,
            isPromoted: isPromoted,
            orderByLowPrice: orderByLowPrice,
            orderByHighPrice: orderByHighPrice,
          );

        case ProductsFunction.searchProducts:
          requestUri = Uri.http(
            Env.httpAddress,
            '/api/v1/search-product-items',
            queryParams,
          );
          remotePageProducts = await _remoteService.getProducts(
            productsFunction: productsFunction,
            requestUri: requestUri,
            pageSize: pageSize,
            query: query,
          );

        case ProductsFunction.searchProductsNextPage:
          requestUri = Uri.http(
            Env.httpAddress,
            '/api/v1/search-product-items-next-page',
            queryParams,
          );
          remotePageProducts = await _remoteService.getProducts(
            productsFunction: productsFunction,
            query: query,
            requestUri: requestUri,
            pageSize: pageSize,
            lastItemId: lastItemId,
            lastProductId: lastProductId,
          );

        case ProductsFunction.getProductsWithPromotions:
          requestUri = Uri.http(
            Env.httpAddress,
            '/api/v1/product-items-with-promotions',
            queryParams,
          );
          remotePageProducts = await _remoteService.getProducts(
            productsFunction: productsFunction,
            requestUri: requestUri,
            pageSize: pageSize,
            productId: productId,
            categoryId: categoryId,
            brandId: brandId,
            colorId: colorId,
            sizeId: sizeId,
            isNew: isNew,
            isPromoted: isPromoted,
            orderByLowPrice: orderByLowPrice,
            orderByHighPrice: orderByHighPrice,
          );

        case ProductsFunction.getProductsWithPromotionsNextPage:
          requestUri = Uri.http(
            Env.httpAddress,
            '/api/v1/product-items-with-promotions-next-page',
            queryParams,
          );
          remotePageProducts = await _remoteService.getProducts(
            productsFunction: productsFunction,
            requestUri: requestUri,
            lastItemId: lastItemId,
            lastProductId: lastProductId,
            pageSize: pageSize,
            categoryId: categoryId,
            brandId: brandId,
            colorId: colorId,
            sizeId: sizeId,
            isNew: isNew,
            isPromoted: isPromoted,
            orderByLowPrice: orderByLowPrice,
            orderByHighPrice: orderByHighPrice,
          );

        case ProductsFunction.getProductsWithBrandPromotions:
          requestUri = Uri.http(
            Env.httpAddress,
            '/api/v1/product-items-with-brand-promotions',
            queryParams,
          );
          remotePageProducts = await _remoteService.getProducts(
            productsFunction: productsFunction,
            requestUri: requestUri,
            pageSize: pageSize,
            categoryId: categoryId,
            brandId: brandId,
            colorId: colorId,
            sizeId: sizeId,
            isNew: isNew,
            isPromoted: isPromoted,
            orderByLowPrice: orderByLowPrice,
            orderByHighPrice: orderByHighPrice,
          );

        case ProductsFunction.getProductsWithBrandPromotionsNextPage:
          requestUri = Uri.http(
            Env.httpAddress,
            '/api/v1/product-items-with-brand-promotions-next-page',
            queryParams,
          );
          remotePageProducts = await _remoteService.getProducts(
            productsFunction: productsFunction,
            requestUri: requestUri,
            lastItemId: lastItemId,
            lastProductId: lastProductId,
            pageSize: pageSize,
            categoryId: categoryId,
            brandId: brandId,
            colorId: colorId,
            sizeId: sizeId,
            isNew: isNew,
            isPromoted: isPromoted,
            orderByLowPrice: orderByLowPrice,
            orderByHighPrice: orderByHighPrice,
          );

        case ProductsFunction.getProductsWithCategoryPromotions:
          requestUri = Uri.http(
            Env.httpAddress,
            '/api/v1/product-items-with-category-promotions',
            queryParams,
          );
          remotePageProducts = await _remoteService.getProducts(
            productsFunction: productsFunction,
            requestUri: requestUri,
            pageSize: pageSize,
            categoryId: categoryId,
            brandId: brandId,
            colorId: colorId,
            sizeId: sizeId,
            isNew: isNew,
            isPromoted: isPromoted,
            orderByLowPrice: orderByLowPrice,
            orderByHighPrice: orderByHighPrice,
          );

        case ProductsFunction.getProductsWithCategoryPromotionsNextPage:
          requestUri = Uri.http(
            Env.httpAddress,
            '/api/v1/product-items-with-category-promotions-next-page',
            queryParams,
          );
          remotePageProducts = await _remoteService.getProducts(
            productsFunction: productsFunction,
            requestUri: requestUri,
            lastItemId: lastItemId,
            lastProductId: lastProductId,
            pageSize: pageSize,
            categoryId: categoryId,
            brandId: brandId,
            colorId: colorId,
            sizeId: sizeId,
            isNew: isNew,
            isPromoted: isPromoted,
            orderByLowPrice: orderByLowPrice,
            orderByHighPrice: orderByHighPrice,
          );
      }
      return await _rightRemotePageProducts(
        remotePageProducts,
        page,
        requestUri,
      );
    } on RestApiException catch (e) {
      return left(ProductFailure.api(e.errorCode));
    }
  }

  Future<Either<ProductFailure, Fresh<List<Product>>>> _rightRemotePageProducts(
    RemoteResponse<List<ProductDTO>> remotePageProducts,
    int page,
    Uri requestUri,
  ) async {
    return right(
      await remotePageProducts.when(
        noConnection: () async => Fresh.no(
          await _localService
              .getPage(page, requestUri.toString())
              .then((_) => _.toDomain()),
          isNextPageAvailable: page <
              await _localService.getLocalPageCount(requestUri.toString()),
        ),
        noContent: () async {
          await _localService.deleteByUri(requestUri.toString());
          return Fresh.no([], isNextPageAvailable: false);
        },
        notModified: (nextAvailable) async {
          final localData = await _localService
              .getPage(page, requestUri.toString())
              .then((_) => _.toDomain());

          if (localData.isEmpty) {
            await _headersCache.deleteHeaders(requestUri);
          }
          return Fresh.yes(
            localData,
            isNextPageAvailable: nextAvailable,
          );
        },
        withNewData: (data, nextAvailable) async {
          // await _localService.deletePage(page);
          await _localService.upsertPage(data, page, requestUri.toString());
          return Fresh.yes(
            data.toDomain(),
            isNextPageAvailable: nextAvailable,
          );
        },
      ),
    );
  }
}
