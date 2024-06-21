import 'package:classic_shop/src/features/core/data/pagination_config.dart';
import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:classic_shop/src/features/products/core/domain/product.dart';
import 'package:classic_shop/src/features/products/core/domain/product_failure.dart';
import 'package:classic_shop/src/features/products/core/shared/providers.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';
import 'package:classic_shop/src/features/products/listed_products/data/list_products_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'promoted_products_notifier.freezed.dart';

typedef RepositoryGetter = Future<Either<ProductFailure, Fresh<List<Product>>>>
    Function(int page, int lastItemId);

@freezed
class PromotedProductsState with _$PromotedProductsState {
  const PromotedProductsState._();
  const factory PromotedProductsState.initial(
    Fresh<List<Product>> promotedProducts,
  ) = _Initial;
  const factory PromotedProductsState.loadInProgress(
    Fresh<List<Product>> promotedProducts,
    int itemsPerPage,
  ) = _LoadInProgress;
  const factory PromotedProductsState.loadSuccess(
    Fresh<List<Product>> promotedProducts, {
    required bool isNextPageAvailable,
  }) = _LoadSuccess;
  const factory PromotedProductsState.loadFailure(
    Fresh<List<Product>> promotedProducts,
    ProductFailure failure,
  ) = _LoadFailure;
}

class PromotedProductsNotifier
    extends AutoDisposeNotifier<PromotedProductsState> {
  late final ListProductsRepository _repository;
  @override
  PromotedProductsState build() {
    _repository = ref.watch(listProductsRepositoryProvider);
    return state = PromotedProductsState.initial(Fresh.yes([]));
  }

  Future<void> getPage({
    int? categoryId,
    int? brandId,
    int? sizeId,
    int? colorId,
    int? pageSize,
    bool? isNew,
    bool? isPromoted,
  }) async {
    // state = PromotedProductsState.loadFailure(
    //   state.promotedProducts,
    //   const ProductFailure.api(404),
    // );
    state = PromotedProductsState.loadInProgress(
      state.promotedProducts,
      PaginationConfig.itemsPerPage,
    );
    final failureOrProducts = await _repository.getProducts(
      1,
      productsFunction: ProductsFunction.getProducts,
      categoryId: categoryId,
      brandId: brandId,
      colorId: colorId,
      sizeId: sizeId,
      pageSize: pageSize,
      isNew: isNew,
      isPromoted: isPromoted,
    );
    state = failureOrProducts.fold(
      (l) => PromotedProductsState.loadFailure(state.promotedProducts, l),
      (r) {
        return PromotedProductsState.loadSuccess(
          r,
          // r.copyWith(
          //   entity: [
          //     ...state.promotedProducts.entity,
          //     ...r.entity,
          //   ],
          // ),
          isNextPageAvailable: r.isNextPageAvailable ?? false,
        );
      },
    );
  }
}
