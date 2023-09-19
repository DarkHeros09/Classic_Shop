// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_promotions_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BrandPromotionsDTO _$$_BrandPromotionsDTOFromJson(
        Map<String, dynamic> json) =>
    _$_BrandPromotionsDTO(
      brandId: json['brand_id'] as int?,
      promotionId: json['promotion_id'] as int?,
      brandPromotionImage: json['brand_promotion_image'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$_BrandPromotionsDTOToJson(
        _$_BrandPromotionsDTO instance) =>
    <String, dynamic>{
      'brand_id': instance.brandId,
      'promotion_id': instance.promotionId,
      'brand_promotion_image': instance.brandPromotionImage,
      'active': instance.active,
    };
