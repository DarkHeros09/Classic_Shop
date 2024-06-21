import 'package:classic_shop/src/features/core/data/pagination_config.dart';
import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:classic_shop/src/features/products/core/domain/product.dart';
import 'package:classic_shop/src/features/products/core/domain/product_failure.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'paginated_products_notifier.freezed.dart';

typedef RepositoryGetter = Future<Either<ProductFailure, Fresh<List<Product>>>>
    Function(int page, int lastItemId, int lastProductId);

@freezed
class PaginatedProductsState with _$PaginatedProductsState {
  const PaginatedProductsState._();
  const factory PaginatedProductsState.initial(
    Fresh<List<Product>> products,
  ) = _Initial;
  const factory PaginatedProductsState.loadInProgress(
    Fresh<List<Product>> products,
    int itemsPerPage,
  ) = _LoadInProgress;
  const factory PaginatedProductsState.loadSuccess(
    Fresh<List<Product>> products, {
    required bool isNextPageAvailable,
  }) = _LoadSuccess;
  const factory PaginatedProductsState.loadFailure(
    Fresh<List<Product>> products,
    ProductFailure failure,
  ) = _LoadFailure;
}

class PaginatedProductsNotifier
    extends AutoDisposeNotifier<PaginatedProductsState> {
  @override
  PaginatedProductsState build() {
    return state = PaginatedProductsState.initial(Fresh.yes([]));
  }

  int _page = 1;
  int _lastItemId = 0;
  int _lastProductId = 0;
  int _pageSearch = 1;
  int _lastItemIdSearch = 0;
  int _lastProductIdSearch = 0;
  int _pagePromotion = 1;
  int _lastItemIdPromotion = 0;
  int _lastProductIdPromotion = 0;
  int _pageBrandPromotion = 1;
  int _lastItemIdBrandPromotion = 0;
  int _lastProductIdBrandPromotion = 0;
  int _pageCategoryPromotion = 1;
  int _lastItemIdCategoryPromotion = 0;
  int _lastProductIdCategoryPromotion = 0;

  Future<void> getPage(
    RepositoryGetter getter,
    ProductsFunction productFunction,
  ) async {
    // state = PaginatedProductsState.loadFailure(
    //   state.products,
    //   const ProductFailure.api(404),
    // );
    state = PaginatedProductsState.loadInProgress(
      state.products,
      PaginationConfig.itemsPerPage,
    );
    final failureOrProducts = await getter(
      switch (productFunction) {
        ProductsFunction.getProducts => _page = 1,
        ProductsFunction.getProductsNextPage => _page,
        ProductsFunction.searchProducts => _pageSearch = 1,
        ProductsFunction.searchProductsNextPage => _pageSearch,
        ProductsFunction.getProductsWithPromotions => _pagePromotion = 1,
        ProductsFunction.getProductsWithPromotionsNextPage => _pagePromotion,
        ProductsFunction.getProductsWithBrandPromotions => _pageBrandPromotion =
            1,
        ProductsFunction.getProductsWithBrandPromotionsNextPage =>
          _pageBrandPromotion,
        ProductsFunction.getProductsWithCategoryPromotions =>
          _pageCategoryPromotion = 1,
        ProductsFunction.getProductsWithCategoryPromotionsNextPage =>
          _pageCategoryPromotion,
      },
      switch (productFunction) {
        ProductsFunction.getProducts => _lastItemId = 0,
        ProductsFunction.getProductsNextPage => _lastItemId,
        ProductsFunction.searchProducts => _lastItemIdSearch = 0,
        ProductsFunction.searchProductsNextPage => _lastItemIdSearch,
        ProductsFunction.getProductsWithPromotions => _lastItemIdPromotion = 0,
        ProductsFunction.getProductsWithPromotionsNextPage =>
          _lastItemIdPromotion,
        ProductsFunction.getProductsWithBrandPromotions =>
          _lastItemIdBrandPromotion = 0,
        ProductsFunction.getProductsWithBrandPromotionsNextPage =>
          _lastItemIdBrandPromotion,
        ProductsFunction.getProductsWithCategoryPromotions =>
          _lastItemIdCategoryPromotion = 0,
        ProductsFunction.getProductsWithCategoryPromotionsNextPage =>
          _lastItemIdCategoryPromotion,
      },
      switch (productFunction) {
        ProductsFunction.getProducts => _lastProductId = 0,
        ProductsFunction.getProductsNextPage => _lastProductId,
        ProductsFunction.searchProducts => _lastProductIdSearch = 0,
        ProductsFunction.searchProductsNextPage => _lastProductIdSearch,
        ProductsFunction.getProductsWithPromotions => _lastProductIdPromotion =
            0,
        ProductsFunction.getProductsWithPromotionsNextPage =>
          _lastProductIdPromotion,
        ProductsFunction.getProductsWithBrandPromotions =>
          _lastProductIdBrandPromotion = 0,
        ProductsFunction.getProductsWithBrandPromotionsNextPage =>
          _lastProductIdBrandPromotion,
        ProductsFunction.getProductsWithCategoryPromotions =>
          _lastProductIdCategoryPromotion = 0,
        ProductsFunction.getProductsWithCategoryPromotionsNextPage =>
          _lastProductIdCategoryPromotion,
      },
    );
    state = failureOrProducts.fold(
      (l) => PaginatedProductsState.loadFailure(state.products, l),
      (r) {
        switch (productFunction) {
          case ProductsFunction.getProducts:
          case ProductsFunction.getProductsNextPage:
            _page++;
            debugPrint(r.toString());
            _lastItemId = r.entity.isEmpty ? 0 : r.entity.last.id;
            _lastProductId = r.entity.isEmpty ? 0 : r.entity.last.productId;

          case ProductsFunction.searchProducts:
          case ProductsFunction.searchProductsNextPage:
            _pageSearch++;
            debugPrint(r.toString());
            _lastItemIdSearch = r.entity.isEmpty ? 0 : r.entity.last.id;
            _lastProductIdSearch =
                r.entity.isEmpty ? 0 : r.entity.last.productId;

          case ProductsFunction.getProductsWithPromotions:
          case ProductsFunction.getProductsWithPromotionsNextPage:
            _pagePromotion++;
            debugPrint(r.toString());
            _lastItemIdPromotion = r.entity.isEmpty ? 0 : r.entity.last.id;
            _lastProductIdPromotion =
                r.entity.isEmpty ? 0 : r.entity.last.productId;
          case ProductsFunction.getProductsWithBrandPromotions:
          case ProductsFunction.getProductsWithBrandPromotionsNextPage:
            _pageBrandPromotion++;
            debugPrint(r.toString());
            _lastItemIdBrandPromotion = r.entity.isEmpty ? 0 : r.entity.last.id;
            _lastProductIdBrandPromotion =
                r.entity.isEmpty ? 0 : r.entity.last.productId;
          case ProductsFunction.getProductsWithCategoryPromotions:
          case ProductsFunction.getProductsWithCategoryPromotionsNextPage:
            _pageCategoryPromotion++;
            debugPrint(r.toString());
            _lastItemIdCategoryPromotion =
                r.entity.isEmpty ? 0 : r.entity.last.id;
            _lastProductIdCategoryPromotion =
                r.entity.isEmpty ? 0 : r.entity.last.productId;
        }
        return PaginatedProductsState.loadSuccess(
          r.copyWith(
            entity: [
              ...state.products.entity,
              ...r.entity,
            ],
          ),
          isNextPageAvailable: r.isNextPageAvailable ?? false,
        );
      },
    );
  }
}
