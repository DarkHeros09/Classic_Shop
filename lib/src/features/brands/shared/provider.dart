import 'package:classic_shop/src/features/brands/data/brand_api.dart';
import 'package:classic_shop/src/features/brands/data/brand_local_service.dart';
import 'package:classic_shop/src/features/brands/data/brand_remote_service.dart';
import 'package:classic_shop/src/features/brands/data/brand_repository.dart';
import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@Riverpod(keepAlive: true)
BrandLocalService brandLocalService(Ref ref) {
  return BrandLocalService(
    ref.watch(sembastProvider),
  );
}

@Riverpod(keepAlive: true)
BrandApi brandApi(Ref ref) {
  return BrandApi.create();
}

@Riverpod(keepAlive: true)
BrandRemoteService brandRemoteService(Ref ref) {
  return BrandRemoteService(
    ref.watch(brandApiProvider),
    ref.watch(responseHeaderCacheProvider),
  );
}

@Riverpod(keepAlive: true)
BrandRepository brandRepository(Ref ref) {
  return BrandRepository(
    ref.watch(brandLocalServiceProvider),
    ref.watch(brandRemoteServiceProvider),
  );
}

//////////* Presentation //////////////

class BrandChipGroupValue {
  const BrandChipGroupValue(
    this.groupValue,
  );
  final int? groupValue;
}

@riverpod
class BrandChipNotifier extends _$BrandChipNotifier {
  @override
  BrandChipGroupValue build() {
    return const BrandChipGroupValue(null);
  }

  void groupValue(int? value) {
    state = BrandChipGroupValue(value);
  }
}

@Riverpod(keepAlive: true)
class SelectedBrandId extends _$SelectedBrandId {
  @override
  int? build() {
    return null;
  }

  void setId(int? id) {
    state = id;
  }
}

@Riverpod(keepAlive: true, dependencies: [])
int brandChipIndex(Ref ref) {
  return 0;
}
