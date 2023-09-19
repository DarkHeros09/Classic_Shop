import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:classic_shop/src/features/products/core/application/paginated_products_notifier.dart';
import 'package:classic_shop/src/features/products/core/shared/providers.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';
import 'package:classic_shop/src/features/products/searched_products/data/searched_products_repository.dart';

class SearchedProductsNotifier extends PaginatedProductsNotifier {
  late final SearchedProductsRepository _repository;
  @override
  PaginatedProductsState build() {
    _repository = ref.watch(searchedProductsRepositoryProvider);
    return PaginatedProductsState.initial(Fresh.yes([]));
  }

  Future<void> searchProductsPage(String query) async {
    await super.searchPage(
      (page, lastItemId) => _repository.searchProducts(query, page),
      ProductsFunction.searchProducts,
    );
  }

  Future<void> searchProductsNextPage(String query) async {
    await super.searchPage(
      (page, lastItemId) =>
          _repository.searchProductsNextPage(query, page, lastItemId),
      ProductsFunction.searchProductsNextPage,
    );
  }
}
