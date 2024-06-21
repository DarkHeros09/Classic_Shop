import 'package:classic_shop/src/features/promotions/domain/combined_promotion.dart';
import 'package:classic_shop/src/features/promotions/domain/promotion_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_promotions.freezed.dart';

@freezed
class CategoryPromotions with _$CategoryPromotions {
  const factory CategoryPromotions({
    required int? categoryId,
    required int? promotionId,
    required String? categoryPromotionImage,
    required bool? active,
    required DateTime? startDate,
    required DateTime? endDate,
  }) = _CategoryPromotions;
  const CategoryPromotions._();

  CombinedPromotions toCombinedPromotions() {
    return CombinedPromotions(
      id: categoryId,
      promotionId: promotionId,
      promotionImage: categoryPromotionImage,
      type: PromotionType.category,
      active: active,
      startDate: startDate,
      endDate: endDate,
    );
  }
}
