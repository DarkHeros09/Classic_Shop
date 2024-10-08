import 'package:classic_shop/gen/env.g.dart';
import 'package:classic_shop/src/features/brands/data/brand_extension.dart';
import 'package:classic_shop/src/features/brands/data/brand_local_service.dart';
import 'package:classic_shop/src/features/brands/data/brand_remote_service.dart';
import 'package:classic_shop/src/features/brands/domain/brand.dart';
import 'package:classic_shop/src/features/brands/domain/brand_failure.dart';
import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:dartz/dartz.dart';

class BrandRepository {
  BrandRepository(
    this._localService,
    this._remoteService,
  );

  final BrandLocalService _localService;
  final BrandRemoteService _remoteService;

  Future<Either<BrandFailure, Fresh<List<Brand>>>> fetchBrand() async {
    try {
      final requestUri = Uri.http(
        Env.httpAddress,
        '/api/v1/brands',
      );
      final category = await _remoteService.fetchBrands(
        requestUri: requestUri,
      );

      return right(
        await category.when(
          noConnection: () async => Fresh.no(
            await _localService.fetchBrand().then((_) => _.toDomain()),
          ),
          noContent: () async {
            await _localService.deleteAllBrands();
            return Fresh.no([], isNextPageAvailable: false);
          },
          notModified: (_) async => Fresh.yes(
            await _localService.fetchBrand().then((_) => _.toDomain()),
          ),
          withNewData: (data, _) async {
            await _localService.setBrand(data);
            return Fresh.yes(data.toDomain());
          },
        ),
      );
    } on RestApiException catch (e) {
      return left(BrandFailure.api(e.errorCode));
    } on Exception catch (_) {
      rethrow;
    }
  }
}
