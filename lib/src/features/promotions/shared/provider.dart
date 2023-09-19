import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:classic_shop/src/features/promotions/application/promotions_notifier.dart';
import 'package:classic_shop/src/features/promotions/data/promotions_api.dart';
import 'package:classic_shop/src/features/promotions/data/promotions_local_service.dart';
import 'package:classic_shop/src/features/promotions/data/promotions_remote_service.dart';
import 'package:classic_shop/src/features/promotions/data/promotions_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final productPromotionsLocalServiceProvider =
    Provider<ProductPromotionsLocalService>((ref) {
  return ProductPromotionsLocalService(
    ref.watch(sembastProvider),
  );
});
final brandPromotionsLocalServiceProvider =
    Provider<BrandPromotionsLocalService>((ref) {
  return BrandPromotionsLocalService(
    ref.watch(sembastProvider),
  );
});
final categoryPromotionsLocalServiceProvider =
    Provider<CategoryPromotionsLocalService>((ref) {
  return CategoryPromotionsLocalService(
    ref.watch(sembastProvider),
  );
});

final promotionsApiProvider = Provider<PromotionsApi>((ref) {
  return PromotionsApi.create();
});

final promotionsRemoteServiceProvider =
    Provider<PromotionsRemoteService>((ref) {
  return PromotionsRemoteService(
    ref.watch(promotionsApiProvider),
    ref.watch(responseHeaderCacheProvider),
  );
});

final promotionsRepositoryProvider = Provider<PromotionsRepository>((ref) {
  return PromotionsRepository(
    ref.watch(productPromotionsLocalServiceProvider),
    ref.watch(brandPromotionsLocalServiceProvider),
    ref.watch(categoryPromotionsLocalServiceProvider),
    ref.watch(promotionsRemoteServiceProvider),
  );
});

final promotionsNotifierProvider =
    NotifierProvider.autoDispose<PromotionsNotifier, PromotionsState>(
  PromotionsNotifier.new,
);
