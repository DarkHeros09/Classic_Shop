import 'package:classic_shop/src/features/categories/application/category_notifier.dart';
import 'package:classic_shop/src/features/categories/data/category_api.dart';
import 'package:classic_shop/src/features/categories/data/category_local_service.dart';
import 'package:classic_shop/src/features/categories/data/category_remote_service.dart';
import 'package:classic_shop/src/features/categories/data/category_repository.dart';
import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final categoryLocalServiceProvider = Provider<CategoryLocalService>((ref) {
  return CategoryLocalService(
    ref.watch(sembastProvider),
  );
});

final categoryApiProvider = Provider<CategoryApi>((ref) {
  return CategoryApi.create();
});

final categoryRemoteServiceProvider = Provider<CategoryRemoteService>((ref) {
  return CategoryRemoteService(
    ref.watch(categoryApiProvider),
    ref.watch(responseHeaderCacheProvider),
  );
});

final categoryRepositoryProvider = Provider<CategoryRepository>((ref) {
  return CategoryRepository(
    ref.watch(categoryLocalServiceProvider),
    ref.watch(categoryRemoteServiceProvider),
  );
});

final categoryNotifierProvider =
    NotifierProvider.autoDispose<CategoryNotifier, CategoryState>(
        CategoryNotifier.new);
