import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:classic_shop/src/features/products/core/data/product_api.dart';
import 'package:classic_shop/src/features/products/listed_products/application/list_products_notifier.dart';
import 'package:classic_shop/src/features/products/listed_products/data/list_products_local_service.dart';
import 'package:classic_shop/src/features/products/listed_products/data/list_products_remote_service.dart';
import 'package:classic_shop/src/features/products/listed_products/data/list_products_repository.dart';
import 'package:classic_shop/src/features/products/searched_products/data/searched_products_remote_service.dart';
import 'package:classic_shop/src/features/products/searched_products/data/searched_products_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
ListProductsLocalService listProductsLocalService(Ref ref) {
  return ListProductsLocalService(ref.watch(sembastProvider));
}

@Riverpod(keepAlive: true)
ProductApi productApi(Ref ref) {
  return ProductApi.create();
}

@Riverpod(keepAlive: true)
ListProductsRemoteService listProductsRemoteService(Ref ref) {
  return ListProductsRemoteService(
    ref.watch(productApiProvider),
    ref.watch(responseHeaderCacheProvider),
  );
}

@Riverpod(keepAlive: true)
ListProductsRepository listProductsRepository(Ref ref) {
  return ListProductsRepository(
    ref.watch(listProductsRemoteServiceProvider),
    ref.watch(listProductsLocalServiceProvider),
    ref.watch(responseHeaderCacheProvider),
  );
}

@Riverpod(keepAlive: true)
SearchedProductsRemoteService searchedProductsRemoteService(Ref ref) {
  return SearchedProductsRemoteService(
    ref.watch(productApiProvider),
    ref.watch(responseHeaderCacheProvider),
  );
}

@Riverpod(keepAlive: true)
SearchedProductsRepository searchedProductsRepository(Ref ref) {
  return SearchedProductsRepository(
    ref.watch(searchedProductsRemoteServiceProvider),
  );
}

//////////////* Presentation //////////////////////

@riverpod
bool isProductEmpty(Ref ref) {
  return ref.watch(listProductsNotifierProvider).products.entity.isEmpty;
}

class SortOptionsGroupValue {
  const SortOptionsGroupValue(
    this.groupValue,
  );
  final String groupValue;
}

@riverpod
class SortOptionsNotifier extends _$SortOptionsNotifier {
  @override
  SortOptionsGroupValue build() {
    return const SortOptionsGroupValue('recommended');
  }

  void groupValue(String value) {
    state = SortOptionsGroupValue(value);
  }
}
