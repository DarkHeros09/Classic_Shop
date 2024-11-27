import 'package:carousel_slider/carousel_controller.dart';
import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:classic_shop/src/features/promotions/data/promotions_api.dart';
import 'package:classic_shop/src/features/promotions/data/promotions_local_service.dart';
import 'package:classic_shop/src/features/promotions/data/promotions_remote_service.dart';
import 'package:classic_shop/src/features/promotions/data/promotions_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@Riverpod(keepAlive: true)
ProductPromotionsLocalService productPromotionsLocalService(Ref ref) {
  return ProductPromotionsLocalService(
    ref.watch(sembastProvider),
  );
}

@Riverpod(keepAlive: true)
BrandPromotionsLocalService brandPromotionsLocalService(Ref ref) {
  return BrandPromotionsLocalService(
    ref.watch(sembastProvider),
  );
}

@Riverpod(keepAlive: true)
CategoryPromotionsLocalService categoryPromotionsLocalService(Ref ref) {
  return CategoryPromotionsLocalService(
    ref.watch(sembastProvider),
  );
}

@Riverpod(keepAlive: true)
PromotionsApi promotionsApi(Ref ref) {
  return PromotionsApi.create();
}

@Riverpod(keepAlive: true)
PromotionsRemoteService promotionsRemoteService(Ref ref) {
  return PromotionsRemoteService(
    ref.watch(promotionsApiProvider),
    ref.watch(responseHeaderCacheProvider),
  );
}

@Riverpod(keepAlive: true)
PromotionsRepository promotionsRepository(Ref ref) {
  return PromotionsRepository(
    ref.watch(productPromotionsLocalServiceProvider),
    ref.watch(brandPromotionsLocalServiceProvider),
    ref.watch(categoryPromotionsLocalServiceProvider),
    ref.watch(promotionsRemoteServiceProvider),
  );
}

////////////////////* Presentation ////////////////////

@Riverpod(keepAlive: true, dependencies: [])
int carouselProductCardIndex(Ref ref) {
  return 0;
}

@Riverpod(keepAlive: true)
class CarouselIndexNotifier extends _$CarouselIndexNotifier {
  @override
  int build() {
    return 0;
  }

  void setIndex(int index) {
    state = index;
  }
}

@Riverpod(keepAlive: true)
CarouselSliderController carouselController(Ref ref) {
  return CarouselSliderController();
}

@Riverpod(keepAlive: true, dependencies: [])
int carouselCardIndex(Ref ref) {
  throw UnimplementedError();
}
