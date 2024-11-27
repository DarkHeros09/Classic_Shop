import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:classic_shop/src/features/products/core/application/paginated_products_notifier.dart';
import 'package:classic_shop/src/features/products/core/shared/providers.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';
import 'package:classic_shop/src/features/products/listed_products/data/list_products_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'list_products_notifier.g.dart';

@riverpod
class ListProductsNotifier extends _$ListProductsNotifier
    with PaginatedProductsNotifier {
  late final ListProductsRepository _repository;
  @override
  PaginatedProductsState build() {
    _repository = ref.watch(listProductsRepositoryProvider);
    // ref.keepAlive();
    return state = PaginatedProductsState.initial(Fresh.yes([]));
  }

  Future<void> getProductsPage({
    required ProductsFunction productsFunction,
    int? productId,
    int? categoryId,
    int? brandId,
    int? sizeId,
    int? colorId,
    String? query,
    int? pageSize,
    bool? isNew,
    bool? isPromoted,
    bool? isFeatured,
    bool? isLimited,
    String? lastPrice,
    bool? orderByLowPrice,
    bool? orderByHighPrice,
    String? lastCreatedAt,
    bool? orderByNew,
    bool? orderByOld,
  }) async {
    await super.getPage(
      (page, lastItemId, lastProductId, lastPrice, lastCreatedAt) =>
          _repository.getProducts(
        page,
        lastItemId: lastItemId,
        lastProductId: lastProductId,
        productsFunction: productsFunction,
        productId: productId,
        categoryId: categoryId,
        brandId: brandId,
        colorId: colorId,
        sizeId: sizeId,
        query: query,
        pageSize: pageSize,
        isNew: isNew,
        isPromoted: isPromoted,
        isFeatured: isFeatured,
        isLimited: isLimited,
        lastPrice: lastPrice,
        orderByLowPrice: orderByLowPrice,
        orderByHighPrice: orderByHighPrice,
        lastCreatedAt: lastCreatedAt,
        orderByNew: orderByNew,
        orderByOld: orderByOld,
      ),
      productsFunction,
    );
  }
}
