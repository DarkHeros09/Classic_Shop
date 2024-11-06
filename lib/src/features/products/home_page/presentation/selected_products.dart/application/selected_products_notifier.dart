import 'package:classic_shop/src/features/core/data/pagination_config.dart';
import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:classic_shop/src/features/products/core/domain/product.dart';
import 'package:classic_shop/src/features/products/core/domain/product_failure.dart';
import 'package:classic_shop/src/features/products/core/shared/providers.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';
import 'package:classic_shop/src/features/products/home_page/application/home_page_notifier.dart';
import 'package:classic_shop/src/features/products/listed_products/data/list_products_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_products_notifier.freezed.dart';
part 'selected_products_notifier.g.dart';

@freezed
class SelectedProductsState with _$SelectedProductsState {
  const SelectedProductsState._();
  const factory SelectedProductsState.initial(
    Fresh<List<Product>> products,
  ) = _Initial;
  const factory SelectedProductsState.loadInProgress(
    Fresh<List<Product>> products,
    int itemsPerPage,
  ) = _LoadInProgress;
  const factory SelectedProductsState.loadSuccess(
    Fresh<List<Product>> products, {
    required bool isNextPageAvailable,
  }) = _LoadSuccess;
  const factory SelectedProductsState.loadFailure(
    Fresh<List<Product>> products,
    ProductFailure failure,
  ) = _LoadFailure;
}

@riverpod
class SelectedProductsNotifier extends _$SelectedProductsNotifier {
  late final ListProductsRepository _repository;
  @override
  SelectedProductsState build(ProductType? type) {
    _repository = ref.watch(listProductsRepositoryProvider);
    // ref.keepAlive();
    return state = SelectedProductsState.initial(Fresh.yes([]));
  }

  int _page = 1;
  int _lastItemId = 0;
  int _lastProductId = 0;

  Future<void> getPage({
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
    bool? orderByLowPrice,
    bool? orderByHighPrice,
  }) async {
    // state = SelectedProductsState.loadFailure(
    //   state.products,
    //   const ProductFailure.api(404),
    // );
    state = SelectedProductsState.loadInProgress(
      state.products,
      PaginationConfig.itemsPerPage,
    );

    _page = switch (productsFunction) {
      ProductsFunction.getProducts => 1,
      ProductsFunction.getProductsNextPage => _page,
      ProductsFunction.getBestSellers => 1,
      _ => 0,
    };
    _lastItemId = switch (productsFunction) {
      ProductsFunction.getProducts => 0,
      ProductsFunction.getProductsNextPage => _lastItemId,
      ProductsFunction.getBestSellers => 0,
      _ => 0,
    };
    _lastProductId = switch (productsFunction) {
      ProductsFunction.getProducts => 0,
      ProductsFunction.getProductsNextPage => _lastProductId,
      ProductsFunction.getBestSellers => 0,
      _ => 0,
    };
    final failureOrProducts = await _repository.getProducts(
      _page,
      lastItemId: _lastItemId,
      lastProductId: _lastProductId,
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
      orderByLowPrice: orderByLowPrice,
      orderByHighPrice: orderByHighPrice,
    );

    state = failureOrProducts.fold(
      (l) => SelectedProductsState.loadFailure(state.products, l),
      (r) {
        _page++;
        debugPrint(r.toString());
        _lastItemId = r.entity.isEmpty ? 0 : r.entity.last.id;
        _lastProductId = r.entity.isEmpty ? 0 : r.entity.last.productId;

        return SelectedProductsState.loadSuccess(
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
