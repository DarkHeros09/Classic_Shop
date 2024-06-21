import 'package:classic_shop/gen/env.g.dart';
import 'package:classic_shop/src/features/core/data/pagination_config.dart';
import 'package:classic_shop/src/features/core/data/remote_response.dart';
import 'package:classic_shop/src/features/products/core/data/product_dto.dart';
import 'package:classic_shop/src/features/products/core/data/product_remote_service.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';

class SearchedProductsRemoteService extends ProductRemoteService {
  SearchedProductsRemoteService(super.productApi, super.headersCache);

  Future<RemoteResponse<List<ProductDTO>>> searchProducts({
    required String query,
  }) async {
    return super.fetchProducts(
      productsFunction: ProductsFunction.searchProducts,
      query: query,
      requestUri: Uri.http(
        Env.httpAddress,
        '/api/v1/search-product-items',
        {
          'query': query,
          'limit': PaginationConfig.itemsPerPage.toString(),
        },
      ),
    );
  }

  Future<RemoteResponse<List<ProductDTO>>> searchProductsNextPage({
    required String query,
    required int lastItemId,
    required int lastProductId,
  }) async {
    return super.fetchProducts(
      productsFunction: ProductsFunction.searchProductsNextPage,
      query: query,
      lastItemId: lastItemId,
      requestUri: Uri.http(
        Env.httpAddress,
        '/api/v1/search-product-items-next-page',
        {
          'query': query,
          'limit': PaginationConfig.itemsPerPage.toString(),
          'cursor': lastItemId.toString(),
        },
      ),
    );
  }
}
