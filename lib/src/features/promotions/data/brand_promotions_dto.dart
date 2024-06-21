import 'package:classic_shop/src/features/promotions/domain/brand_promotions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_promotions_dto.freezed.dart';
part 'brand_promotions_dto.g.dart';

@freezed
class BrandPromotionsDTO with _$BrandPromotionsDTO {
  const factory BrandPromotionsDTO({
    required int? brandId,
    required int? promotionId,
    required String? brandPromotionImage,
    required bool? active,
    required DateTime? startDate,
    required DateTime? endDate,
  }) = _BrandPromotionsDTO;
  const BrandPromotionsDTO._();
  factory BrandPromotionsDTO.fromJson(Map<String, dynamic> json) =>
      _$BrandPromotionsDTOFromJson(json);

  factory BrandPromotionsDTO.fromDomain(BrandPromotions _) {
    return BrandPromotionsDTO(
      brandId: _.brandId,
      promotionId: _.promotionId,
      brandPromotionImage: _.brandPromotionImage,
      active: _.active,
      startDate: _.startDate,
      endDate: _.endDate,
    );
  }

  BrandPromotions toDomain() {
    return BrandPromotions(
      brandId: brandId,
      promotionId: promotionId,
      brandPromotionImage: brandPromotionImage,
      active: active,
      startDate: startDate,
      endDate: endDate,
    );
  }
}
