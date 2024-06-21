// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_promotions_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductPromotionsDTOImpl _$$ProductPromotionsDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductPromotionsDTOImpl(
      productId: (json['product_id'] as num?)?.toInt(),
      promotionId: (json['promotion_id'] as num?)?.toInt(),
      productPromotionImage: json['product_promotion_image'] as String?,
      active: json['active'] as bool?,
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
    );

Map<String, dynamic> _$$ProductPromotionsDTOImplToJson(
        _$ProductPromotionsDTOImpl instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'promotion_id': instance.promotionId,
      'product_promotion_image': instance.productPromotionImage,
      'active': instance.active,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
    };
