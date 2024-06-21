import 'package:classic_shop/gen/env.g.dart';
import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:classic_shop/src/features/promotions/data/product_extensions.dart';
import 'package:classic_shop/src/features/promotions/data/promotions_local_service.dart';
import 'package:classic_shop/src/features/promotions/data/promotions_remote_service.dart';
import 'package:classic_shop/src/features/promotions/domain/brand_promotions.dart';
import 'package:classic_shop/src/features/promotions/domain/category_promotions.dart';
import 'package:classic_shop/src/features/promotions/domain/product_promotions.dart';
import 'package:classic_shop/src/features/promotions/domain/promotions.dart';
import 'package:classic_shop/src/features/promotions/domain/promotions_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

class PromotionsRepository {
  PromotionsRepository(
    this._productPromotionsLocalService,
    this._brandPromotionsLocalService,
    this._categoryPromotionsLocalService,
    this._remoteService,
  );

  final ProductPromotionsLocalService _productPromotionsLocalService;
  final BrandPromotionsLocalService _brandPromotionsLocalService;
  final CategoryPromotionsLocalService _categoryPromotionsLocalService;
  final PromotionsRemoteService _remoteService;

  Future<Either<PromotionsFailure, Fresh<Promotions>>> getPromotions() async {
    try {
      final productPromotionsRequestUri = Uri.http(
        Env.httpAddress,
        '/api/v1/product-promotions-images',
      );
      final brandPromotionsRequestUri = Uri.http(
        Env.httpAddress,
        '/api/v1/brand-promotions-images',
      );
      final categoryPromotionsRequestUri = Uri.http(
        Env.httpAddress,
        '/api/v1/category-promotions-images',
      );
      final remoteProductPromotions = await _remoteService.fetchPromotions(
        productPromotionsRequestUri: productPromotionsRequestUri,
        brandPromotionsRequestUri: brandPromotionsRequestUri,
        categoryPromotionsRequestUri: categoryPromotionsRequestUri,
      );

      return right(
        await remoteProductPromotions.when(
          noConnection: () async {
            final localPromotions = await Future.wait([
              _productPromotionsLocalService
                  .fetchProductPromotions()
                  .then((_) => _.toDomain()),
              _brandPromotionsLocalService
                  .fetchBrandPromotions()
                  .then((_) => _.toDomain()),
              _categoryPromotionsLocalService
                  .fetchCategoryPromotions()
                  .then((_) => _.toDomain()),
            ]);
            return Fresh.no(
              Promotions(
                productPromotions:
                    localPromotions[0] as List<ProductPromotions>?,
                brandPromotions: localPromotions[1] as List<BrandPromotions>?,
                categoryPromotions:
                    localPromotions[2] as List<CategoryPromotions>?,
              ),
              isNextPageAvailable: false,
            );
          },
          noContent: () async {
            await _productPromotionsLocalService.deleteAllProductPromotions();
            await _brandPromotionsLocalService.deleteAllBrandPromotions();
            await _categoryPromotionsLocalService.deleteAllCategoryPromotions();
            return Fresh.no(
              const Promotions(
                productPromotions: [],
                brandPromotions: [],
                categoryPromotions: [],
              ),
              isNextPageAvailable: false,
            );
          },
          notModified: (maxPage) async {
            final localPromotions = await Future.wait([
              _productPromotionsLocalService
                  .fetchProductPromotions()
                  .then((_) => _.toDomain()),
              _brandPromotionsLocalService
                  .fetchBrandPromotions()
                  .then((_) => _.toDomain()),
              _categoryPromotionsLocalService
                  .fetchCategoryPromotions()
                  .then((_) => _.toDomain()),
            ]);

            debugPrint('PPTTP: ${localPromotions[0]}');
            debugPrint('PPTTB: ${localPromotions[1]}');
            debugPrint('PPTTC: ${localPromotions[2]}');
            return Fresh.yes(
              Promotions(
                productPromotions:
                    localPromotions[0] as List<ProductPromotions>?,
                brandPromotions: localPromotions[1] as List<BrandPromotions>?,
                categoryPromotions:
                    localPromotions[2] as List<CategoryPromotions>?,
              ),
              isNextPageAvailable: false,
            );
          },
          withNewData: (data, maxPage) async {
            await Future.wait([
              if (data.productPromotions != null)
                _productPromotionsLocalService
                    .setProductPromotions(data.productPromotions!),
              if (data.brandPromotions != null)
                _brandPromotionsLocalService
                    .setBrandPromotions(data.brandPromotions!),
              if (data.categoryPromotions != null)
                _categoryPromotionsLocalService
                    .setCategoryPromotions(data.categoryPromotions!),
            ]);

            debugPrint('DATAPROMO: $data');
            return Fresh.yes(
              data.toDomain(),
              isNextPageAvailable: false,
            );
          },
        ),
      );
    } on RestApiException catch (e) {
      return left(PromotionsFailure.api(e.errorCode));
    }
  }
}
