import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_promotions.freezed.dart';

@freezed
class CategoryPromotions with _$CategoryPromotions {
  const factory CategoryPromotions({
    required int? categoryId,
    required int? promotionId,
    required String? categoryPromotionImage,
    required bool? active,
  }) = _CategoryPromotions;
}
