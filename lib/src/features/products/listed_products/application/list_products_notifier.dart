import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:classic_shop/src/features/products/core/application/paginated_products_notifier.dart';
import 'package:classic_shop/src/features/products/core/shared/providers.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';
import 'package:classic_shop/src/features/products/listed_products/data/list_products_repository.dart';

class ListProductsNotifier extends PaginatedProductsNotifier {
  late final ListProductsRepository _repository;
  @override
  PaginatedProductsState build() {
    _repository = ref.watch(listProductsRepositoryProvider);
    // ref.keepAlive();
    return state = PaginatedProductsState.initial(Fresh.yes([]));
  }

  Future<void> getProductsPage({
    int? categoryId,
    int? brandId,
    int? sizeId,
    int? colorId,
    int? pageSize,
  }) async {
    await super.getPage(
      (page, lastItemId) => _repository.getProducts(
        page,
        categoryId: categoryId,
        brandId: brandId,
        colorId: colorId,
        sizeId: sizeId,
        pageSize: pageSize,
      ),
      ProductsFunction.getProducts,
    );
  }

  Future<void> getProductsNextPage({
    int? categoryId,
    int? brandId,
    int? sizeId,
    int? colorId,
    int? pageSize,
  }) async {
    await super.getPage(
      (page, lastItemId) => _repository.getProductsNextPage(
        lastItemId,
        page,
        categoryId: categoryId,
        brandId: brandId,
        colorId: colorId,
        sizeId: sizeId,
        pageSize: pageSize,
      ),
      ProductsFunction.getProductsNextPage,
    );
  }
}
