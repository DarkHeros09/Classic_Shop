import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_promotions.freezed.dart';

@freezed
class BrandPromotions with _$BrandPromotions {
  const factory BrandPromotions({
    required int? brandId,
    required int? promotionId,
    required String? brandPromotionImage,
    required bool? active,
  }) = _BrandPromotions;
}
