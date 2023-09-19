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
    Function(int page, int lastItemId);

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
        _ => 0
      },
      switch (productFunction) {
        ProductsFunction.getProducts => _lastItemId = 0,
        ProductsFunction.getProductsNextPage => _lastItemId,
        _ => 0
      },
    );
    state = failureOrProducts.fold(
      (l) => PaginatedProductsState.loadFailure(state.products, l),
      (r) {
        _page++;
        debugPrint(r.toString());
        _lastItemId = r.entity.isEmpty ? 0 : r.entity.last.id;
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

  Future<void> searchPage(
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
    debugPrint('before lastItemid: $_lastItemId');
    final failureOrProducts = await getter(
      switch (productFunction) {
        ProductsFunction.getProducts => _page = 1,
        ProductsFunction.getProductsNextPage => _page,
        _ => 0
      },
      switch (productFunction) {
        ProductsFunction.searchProducts => _lastItemId = 0,
        ProductsFunction.searchProductsNextPage => _lastItemId,
        _ => 0
      },
    );
    state = failureOrProducts.fold(
      (l) => PaginatedProductsState.loadFailure(state.products, l),
      (r) {
        _page++;
        _lastItemId = r.entity.isEmpty ? 0 : r.entity.last.id;
        debugPrint('after lastItemid: $_lastItemId');
        debugPrint('isNextPageAvailable: ${r.isNextPageAvailable}');
        return PaginatedProductsState.loadSuccess(
          r.copyWith(
            entity: r.entity.isEmpty
                ? state.products.entity
                : [
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
