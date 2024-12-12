import 'package:classic_shop/src/features/categories/data/category_api.dart';
import 'package:classic_shop/src/features/categories/data/category_local_service.dart';
import 'package:classic_shop/src/features/categories/data/category_remote_service.dart';
import 'package:classic_shop/src/features/categories/data/category_repository.dart';
import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@Riverpod(keepAlive: true)
CategoryLocalService categoryLocalService(Ref ref) {
  return CategoryLocalService(
    ref.watch(sembastDatabaseProvider),
  );
}

@Riverpod(keepAlive: true)
CategoryApi categoryApi(Ref ref) {
  return CategoryApi.create();
}

@Riverpod(keepAlive: true)
CategoryRemoteService categoryRemoteService(Ref ref) {
  return CategoryRemoteService(
    ref.watch(categoryApiProvider),
    ref.watch(responseHeaderCacheProvider),
  );
}

@Riverpod(keepAlive: true)
CategoryRepository categoryRepository(Ref ref) {
  return CategoryRepository(
    ref.watch(categoryLocalServiceProvider),
    ref.watch(categoryRemoteServiceProvider),
  );
}

////////////////* Presentation //////////////////

@Riverpod(keepAlive: true)
class SelectedCategoryId extends _$SelectedCategoryId {
  @override
  int build() {
    return 0;
  }

  void setId(int id) {
    state = id;
  }
}

class CategoryChipGroupValue {
  const CategoryChipGroupValue(
    this.groupValue,
  );
  final int groupValue;
}

@Riverpod(keepAlive: true)
class CategoryChipNotifier extends _$CategoryChipNotifier {
  @override
  CategoryChipGroupValue build() {
    return const CategoryChipGroupValue(0);
  }

  void groupValue(int value) {
    state = CategoryChipGroupValue(value);
  }
}
