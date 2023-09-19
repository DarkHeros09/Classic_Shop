import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_promotions.freezed.dart';

@freezed
class ProductPromotions with _$ProductPromotions {
  const factory ProductPromotions({
    required int? productId,
    required int? promotionId,
    required String? productPromotionImage,
    required bool? active,
  }) = _ProductPromotions;
}
