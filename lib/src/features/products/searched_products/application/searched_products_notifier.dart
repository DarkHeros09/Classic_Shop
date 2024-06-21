import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:classic_shop/src/features/products/core/application/paginated_products_notifier.dart';
import 'package:classic_shop/src/features/products/core/shared/providers.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';
import 'package:classic_shop/src/features/products/listed_products/data/list_products_repository.dart';

class SearchedProductsNotifier extends PaginatedProductsNotifier {
  late final ListProductsRepository _repository;
  @override
  PaginatedProductsState build() {
    _repository = ref.watch(listProductsRepositoryProvider);
    return PaginatedProductsState.initial(Fresh.yes([]));
  }

  Future<void> searchProductsPage(String query) async {
    await super.getPage(
      (page, lastItemId, lastProductId) => _repository.getProducts(
        page,
        query: query,
        productsFunction: ProductsFunction.searchProducts,
      ),
      ProductsFunction.searchProducts,
    );
  }

  Future<void> searchProductsNextPage(String query) async {
    await super.getPage(
      (page, lastItemId, lastProductId) => _repository.getProducts(
        page,
        productsFunction: ProductsFunction.searchProductsNextPage,
        query: query,
        lastItemId: lastItemId,
        lastProductId: lastProductId,
      ),
      ProductsFunction.searchProductsNextPage,
    );
  }
}
