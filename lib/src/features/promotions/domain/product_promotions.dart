import 'package:classic_shop/src/features/promotions/domain/combined_promotion.dart';
import 'package:classic_shop/src/features/promotions/domain/promotion_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_promotions.freezed.dart';

@freezed
class ProductPromotions with _$ProductPromotions {
  const factory ProductPromotions({
    required int? productId,
    required int? promotionId,
    required String? productPromotionImage,
    required bool? active,
    required DateTime? startDate,
    required DateTime? endDate,
  }) = _ProductPromotions;
  const ProductPromotions._();

  CombinedPromotions toCombinedPromotions() {
    return CombinedPromotions(
      id: productId,
      promotionId: promotionId,
      promotionImage: productPromotionImage,
      type: PromotionType.product,
      active: active,
      startDate: startDate,
      endDate: endDate,
    );
  }
}
