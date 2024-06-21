// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_promotions_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryPromotionsDTOImpl _$$CategoryPromotionsDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryPromotionsDTOImpl(
      categoryId: (json['category_id'] as num?)?.toInt(),
      promotionId: (json['promotion_id'] as num?)?.toInt(),
      categoryPromotionImage: json['category_promotion_image'] as String?,
      active: json['active'] as bool?,
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
    );

Map<String, dynamic> _$$CategoryPromotionsDTOImplToJson(
        _$CategoryPromotionsDTOImpl instance) =>
    <String, dynamic>{
      'category_id': instance.categoryId,
      'promotion_id': instance.promotionId,
      'category_promotion_image': instance.categoryPromotionImage,
      'active': instance.active,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
    };
