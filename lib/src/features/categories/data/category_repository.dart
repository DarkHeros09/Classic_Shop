import 'package:classic_shop/gen/env.g.dart';
import 'package:classic_shop/src/features/categories/data/category_extension.dart';
import 'package:classic_shop/src/features/categories/data/category_local_service.dart';
import 'package:classic_shop/src/features/categories/data/category_remote_service.dart';
import 'package:classic_shop/src/features/categories/domain/category.dart';
import 'package:classic_shop/src/features/categories/domain/category_failure.dart';
import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:dartz/dartz.dart';

class CategoryRepository {
  CategoryRepository(
    this._localService,
    this._remoteService,
  );

  final CategoryLocalService _localService;
  final CategoryRemoteService _remoteService;

  Future<Either<CategoryFailure, Fresh<List<Category>>>> fetchCategory() async {
    try {
      final requestUri = Uri.http(
        Env.httpAddress,
        '/usr/v1/categories',
      );
      final category = await _remoteService.fetchCategories(
        requestUri: requestUri,
      );

      return right(
        await category.when(
          noConnection: () async => Fresh.no(
            await _localService.fetchCategory().then((_) => _.toDomain()),
          ),
          noContent: () async {
            await _localService.deleteAllCategories();
            return Fresh.no([], isNextPageAvailable: false);
          },
          notModified: (_) async => Fresh.yes(
            await _localService.fetchCategory().then((_) => _.toDomain()),
          ),
          withNewData: (data, _) async {
            await _localService.setCategory(data);
            return Fresh.yes(data.toDomain());
          },
        ),
      );
    } on RestApiException catch (e) {
      return left(CategoryFailure.api(e.errorCode));
    } on Exception catch (_) {
      rethrow;
    }
  }
}
