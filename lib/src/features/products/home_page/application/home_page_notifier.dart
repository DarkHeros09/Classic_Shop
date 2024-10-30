import 'package:classic_shop/src/features/core/data/pagination_config.dart';
import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:classic_shop/src/features/products/core/domain/product.dart';
import 'package:classic_shop/src/features/products/core/domain/product_failure.dart';
import 'package:classic_shop/src/features/products/core/shared/providers.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';
import 'package:classic_shop/src/features/products/listed_products/data/list_products_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_page_notifier.freezed.dart';
part 'home_page_notifier.g.dart';

typedef RepositoryGetter = Future<Either<ProductFailure, Fresh<List<Product>>>>
    Function(int page, int lastItemId);

@freezed
class HomePageState with _$HomePageState {
  const HomePageState._();
  const factory HomePageState.initial(
    Fresh<List<Product>> products,
  ) = _Initial;
  const factory HomePageState.loadInProgress(
    Fresh<List<Product>> products,
    int itemsPerPage,
  ) = _LoadInProgress;
  const factory HomePageState.loadSuccess(
    Fresh<List<Product>> products, {
    required bool isNextPageAvailable,
  }) = _LoadSuccess;
  const factory HomePageState.loadFailure(
    Fresh<List<Product>> products,
    ProductFailure failure,
  ) = _LoadFailure;
}

@riverpod
class HomePageNotifier extends _$HomePageNotifier {
  late final ListProductsRepository _repository;
  @override
  HomePageState build(ProductType? type) {
    _repository = ref.watch(listProductsRepositoryProvider);
    return state = HomePageState.initial(Fresh.yes([]));
  }

  Future<void> getPage({
    int? categoryId,
    int? brandId,
    int? sizeId,
    int? colorId,
    int? pageSize,
    bool? isNew,
    bool? isPromoted,
    bool? isFeatured,
  }) async {
    // state = HomePageState.loadFailure(
    //   state.products,
    //   const ProductFailure.api(404),
    // );
    state = HomePageState.loadInProgress(
      state.products,
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
      isFeatured: isFeatured,
    );
    state = failureOrProducts.fold(
      (l) => HomePageState.loadFailure(state.products, l),
      (r) {
        return HomePageState.loadSuccess(
          r,
          // r.copyWith(
          //   entity: [
          //     ...state.products.entity,
          //     ...r.entity,
          //   ],
          // ),
          isNextPageAvailable: r.isNextPageAvailable ?? false,
        );
      },
    );
  }

  Future<void> getBestSellers({
    int? pageSize,
  }) async {
    // state = HomePageState.loadFailure(
    //   state.products,
    //   const ProductFailure.api(404),
    // );
    state = HomePageState.loadInProgress(
      state.products,
      PaginationConfig.itemsPerPage,
    );
    final failureOrProducts = await _repository.getProducts(
      1,
      productsFunction: ProductsFunction.getBestSellers,
      pageSize: pageSize,
    );
    state = failureOrProducts.fold(
      (l) => HomePageState.loadFailure(state.products, l),
      (r) {
        return HomePageState.loadSuccess(
          r,
          // r.copyWith(
          //   entity: [
          //     ...state.products.entity,
          //     ...r.entity,
          //   ],
          // ),
          isNextPageAvailable: r.isNextPageAvailable ?? false,
        );
      },
    );
  }
}

enum ProductType {
  isNew,
  isPromoted,
  isFeatured,
  isBestSellers,
}
