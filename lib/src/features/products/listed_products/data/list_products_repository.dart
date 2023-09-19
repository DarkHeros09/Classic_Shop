import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/data/pagination_config.dart';
import 'package:classic_shop/src/features/core/data/remote_response.dart';
import 'package:classic_shop/src/features/core/data/response_headers_cache.dart';
import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:classic_shop/src/features/products/core/data/product_dto.dart';
import 'package:classic_shop/src/features/products/core/data/product_extensions.dart';
import 'package:classic_shop/src/features/products/core/domain/product.dart';
import 'package:classic_shop/src/features/products/core/domain/product_failure.dart';
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
    int? categoryId,
    int? brandId,
    int? sizeId,
    int? colorId,
    int? pageSize = PaginationConfig.itemsPerPage,
    bool? isNew,
    bool? isPromoted,
  }) {
    final queryParams = {
      'limit': pageSize.toString(),
    };
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
    //TODO: add cursor
    return queryParams;
  }

  Future<Either<ProductFailure, Fresh<List<Product>>>> getProducts(
    int page, {
    int? categoryId,
    int? brandId,
    int? sizeId,
    int? colorId,
    int? pageSize,
    bool? isNew,
    bool? isPromoted,
  }) async {
    try {
      final queryParams = _createQueryParams(
        pageSize: pageSize,
        brandId: brandId,
        categoryId: categoryId,
        colorId: colorId,
        sizeId: sizeId,
        isNew: isNew,
        isPromoted: isPromoted,
      );
      final requestUri = Uri.http(
        '192.168.10.170:8080',
        '/api/v1/product-items-V2',
        queryParams,
      );
      final remotePageProducts = await _remoteService.getProducts(
        requestUri: requestUri,
        pageSize: pageSize,
        categoryId: categoryId,
        brandId: brandId,
        colorId: colorId,
        sizeId: sizeId,
        isNew: isNew,
        isPromoted: isPromoted,
      );
      return await _rightRemotePageProducts(
        remotePageProducts,
        page,
        requestUri,
      );
    } on RestApiException catch (e) {
      return left(ProductFailure.api(e.errorCode));
    }
  }

  Future<Either<ProductFailure, Fresh<List<Product>>>> getProductsNextPage(
    int lastItemId,
    int page, {
    int? categoryId,
    int? brandId,
    int? sizeId,
    int? colorId,
    int? pageSize,
    bool? isNew,
    bool? isPromoted,
  }) async {
    try {
      final queryParams = _createQueryParams(
        pageSize: pageSize,
        brandId: brandId,
        categoryId: categoryId,
        colorId: colorId,
        sizeId: sizeId,
        isNew: isNew,
        isPromoted: isPromoted,
      );
      final requestUri = Uri.http(
        '192.168.10.170:8080',
        '/api/v1/product-items-next-page',
        queryParams,
      );
      final remotePageProducts = await _remoteService.getProductsNextPage(
        requestUri: requestUri,
        lastItemId: lastItemId,
        pageSize: pageSize,
        categoryId: categoryId,
        brandId: brandId,
        colorId: colorId,
        sizeId: sizeId,
        isNew: isNew,
        isPromoted: isPromoted,
      );
      return _rightRemotePageProducts(
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
        notModified: (maxPage) async {
          final localData = await _localService
              .getPage(page, requestUri.toString())
              .then((_) => _.toDomain());

          if (localData.isEmpty) {
            await _headersCache.deleteHeaders(requestUri);
          }
          return Fresh.yes(
            localData,
            isNextPageAvailable: page < maxPage,
          );
        },
        withNewData: (data, maxPage) async {
          // await _localService.deletePage(page);
          await _localService.upsertPage(data, page, requestUri.toString());
          return Fresh.yes(
            data.toDomain(),
            isNextPageAvailable: page < maxPage,
          );
        },
      ),
    );
  }
}
