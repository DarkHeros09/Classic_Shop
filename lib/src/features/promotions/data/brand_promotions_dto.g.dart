// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_promotions_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrandPromotionsDTOImpl _$$BrandPromotionsDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$BrandPromotionsDTOImpl(
      brandId: (json['brand_id'] as num?)?.toInt(),
      promotionId: (json['promotion_id'] as num?)?.toInt(),
      brandPromotionImage: json['brand_promotion_image'] as String?,
      active: json['active'] as bool?,
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
    );

Map<String, dynamic> _$$BrandPromotionsDTOImplToJson(
        _$BrandPromotionsDTOImpl instance) =>
    <String, dynamic>{
      'brand_id': instance.brandId,
      'promotion_id': instance.promotionId,
      'brand_promotion_image': instance.brandPromotionImage,
      'active': instance.active,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
    };
