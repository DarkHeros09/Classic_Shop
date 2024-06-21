import 'package:classic_shop/src/features/brands/application/brand_notifier.dart';
import 'package:classic_shop/src/features/brands/data/brand_api.dart';
import 'package:classic_shop/src/features/brands/data/brand_local_service.dart';
import 'package:classic_shop/src/features/brands/data/brand_remote_service.dart';
import 'package:classic_shop/src/features/brands/data/brand_repository.dart';
import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final brandLocalServiceProvider = Provider<BrandLocalService>((ref) {
  return BrandLocalService(
    ref.watch(sembastProvider),
  );
});

final brandApiProvider = Provider<BrandApi>((ref) {
  return BrandApi.create();
});

final brandRemoteServiceProvider = Provider<BrandRemoteService>((ref) {
  return BrandRemoteService(
    ref.watch(brandApiProvider),
    ref.watch(responseHeaderCacheProvider),
  );
});

final brandRepositoryProvider = Provider<BrandRepository>((ref) {
  return BrandRepository(
    ref.watch(brandLocalServiceProvider),
    ref.watch(brandRemoteServiceProvider),
  );
});

final brandNotifierProvider =
    NotifierProvider.autoDispose<BrandNotifier, BrandState>(
  BrandNotifier.new,
);
