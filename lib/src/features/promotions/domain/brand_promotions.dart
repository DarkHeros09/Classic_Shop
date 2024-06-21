import 'package:classic_shop/src/features/promotions/domain/combined_promotion.dart';
import 'package:classic_shop/src/features/promotions/domain/promotion_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_promotions.freezed.dart';

@freezed
class BrandPromotions with _$BrandPromotions {
  const factory BrandPromotions({
    required int? brandId,
    required int? promotionId,
    required String? brandPromotionImage,
    required bool? active,
    required DateTime? startDate,
    required DateTime? endDate,
  }) = _BrandPromotions;
  const BrandPromotions._();

  CombinedPromotions toCombinedPromotions() {
    return CombinedPromotions(
      id: brandId,
      promotionId: promotionId,
      promotionImage: brandPromotionImage,
      type: PromotionType.brand,
      active: active,
      startDate: startDate,
      endDate: endDate,
    );
  }
}
