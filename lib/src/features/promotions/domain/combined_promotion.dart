import 'package:classic_shop/src/features/promotions/domain/promotion_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'combined_promotion.freezed.dart';

@freezed
class CombinedPromotions with _$CombinedPromotions {
  const factory CombinedPromotions({
    required int? id,
    required int? promotionId,
    required String? promotionImage,
    required PromotionType? type,
    required bool? active,
    required DateTime? startDate,
    required DateTime? endDate,
  }) = _CombinedPromotions;
}
