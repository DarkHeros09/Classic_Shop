import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:classic_shop/src/features/products/core/data/product_extensions.dart';
import 'package:classic_shop/src/features/products/core/domain/product.dart';
import 'package:classic_shop/src/features/products/core/domain/product_failure.dart';
import 'package:classic_shop/src/features/products/searched_products/data/searched_products_remote_service.dart';
import 'package:dartz/dartz.dart';

class SearchedProductsRepository {
  SearchedProductsRepository(this._remoteService);

  final SearchedProductsRemoteService _remoteService;

  Future<Either<ProductFailure, Fresh<List<Product>>>> searchProducts(
    String query,
    int page,
  ) async {
    try {
      final remotePageProducts = await _remoteService.searchProducts(
        query: query,
      );
      return right(
        await remotePageProducts.maybeWhen(
          withNewData: (data, nextAvailable) async => Fresh.yes(
            data.toDomain(),
            isNextPageAvailable: nextAvailable,
          ),
          orElse: () => Fresh.no([], isNextPageAvailable: false),
        ),
      );
    } on RestApiException catch (e) {
      return left(ProductFailure.api(e.errorCode));
    }
  }

  Future<Either<ProductFailure, Fresh<List<Product>>>> searchProductsNextPage(
    String query,
    int page,
    int lastItemId,
    int lastProductId,
  ) async {
    try {
      final remotePageProducts = await _remoteService.searchProductsNextPage(
        query: query,
        lastItemId: lastItemId,
        lastProductId: lastProductId,
      );
      return right(
        await remotePageProducts.maybeWhen(
          withNewData: (data, nextAvailable) async {
            return Fresh.yes(
              data.toDomain(),
              isNextPageAvailable: nextAvailable,
            );
          },
          orElse: () => Fresh.no([], isNextPageAvailable: false),
        ),
      );
    } on RestApiException catch (e) {
      return left(ProductFailure.api(e.errorCode));
    }
  }
}
