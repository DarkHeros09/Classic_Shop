import 'package:classic_shop/src/features/core/data/pagination_config.dart';
import 'package:classic_shop/src/features/core/data/remote_response.dart';
import 'package:classic_shop/src/features/products/core/data/product_dto.dart';
import 'package:classic_shop/src/features/products/core/data/product_remote_service.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';

class ListProductsRemoteService extends ProductRemoteService {
  ListProductsRemoteService(super.productApi, super.headersCache);

  Future<RemoteResponse<List<ProductDTO>>> getProducts({
    required Uri requestUri,
    int? categoryId,
    int? brandId,
    int? sizeId,
    int? colorId,
    int? pageSize,
    bool? isNew,
    bool? isPromoted,
  }) async {
    return super.fetchProducts(
      productsFunction: ProductsFunction.getProducts,
      categoryId: categoryId,
      brandId: brandId,
      colorId: colorId,
      sizeId: sizeId,
      requestUri: requestUri,
      pageSize: pageSize ?? PaginationConfig.itemsPerPage,
      isNew: isNew,
      isPromoted: isPromoted,
    );
  }

  Future<RemoteResponse<List<ProductDTO>>> getProductsNextPage({
    required Uri requestUri,
    required int lastItemId,
    int? categoryId,
    int? brandId,
    int? sizeId,
    int? colorId,
    int? pageSize,
    bool? isNew,
    bool? isPromoted,
  }) async {
    return super.fetchProducts(
      productsFunction: ProductsFunction.getProductsNextPage,
      lastItemId: lastItemId,
      categoryId: categoryId,
      brandId: brandId,
      colorId: colorId,
      sizeId: sizeId,
      requestUri: requestUri,
      pageSize: pageSize,
      isNew: isNew,
      isPromoted: isPromoted,
    );
  }
}
