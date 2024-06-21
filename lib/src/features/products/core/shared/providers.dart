import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:classic_shop/src/features/products/core/application/paginated_products_notifier.dart';
import 'package:classic_shop/src/features/products/core/data/product_api.dart';
import 'package:classic_shop/src/features/products/listed_products/application/list_products_notifier.dart';
import 'package:classic_shop/src/features/products/listed_products/data/list_products_local_service.dart';
import 'package:classic_shop/src/features/products/listed_products/data/list_products_remote_service.dart';
import 'package:classic_shop/src/features/products/listed_products/data/list_products_repository.dart';
import 'package:classic_shop/src/features/products/searched_products/application/searched_products_notifier.dart';
import 'package:classic_shop/src/features/products/searched_products/data/searched_products_remote_service.dart';
import 'package:classic_shop/src/features/products/searched_products/data/searched_products_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final listProductsLocalServiceProvider = Provider((ref) {
  return ListProductsLocalService(ref.watch(sembastProvider));
});

final productApiProvider = Provider((ref) {
  return ProductApi.create();
});

final listProductsRemoteServiceProvider = Provider((ref) {
  return ListProductsRemoteService(
    ref.watch(productApiProvider),
    ref.watch(responseHeaderCacheProvider),
  );
});

final listProductsRepositoryProvider = Provider((ref) {
  return ListProductsRepository(
    ref.watch(listProductsRemoteServiceProvider),
    ref.watch(listProductsLocalServiceProvider),
    ref.watch(responseHeaderCacheProvider),
  );
});

final searchedProductsRemoteServiceProvider = Provider((ref) {
  return SearchedProductsRemoteService(
    ref.watch(productApiProvider),
    ref.watch(responseHeaderCacheProvider),
  );
});

final searchedProductsRepositoryProvider = Provider((ref) {
  return SearchedProductsRepository(
    ref.watch(searchedProductsRemoteServiceProvider),
  );
});

final paginatedProductsNotifierProvider = NotifierProvider.autoDispose<
    PaginatedProductsNotifier, PaginatedProductsState>(
  PaginatedProductsNotifier.new,
);

final listProductsNotifierProvider =
    NotifierProvider.autoDispose<ListProductsNotifier, PaginatedProductsState>(
  ListProductsNotifier.new,
);

final searchedProductsNotifierProvider = NotifierProvider.autoDispose<
    SearchedProductsNotifier, PaginatedProductsState>(
  SearchedProductsNotifier.new,
);
