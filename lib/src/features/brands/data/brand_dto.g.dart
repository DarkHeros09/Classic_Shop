// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrandDTOImpl _$$BrandDTOImplFromJson(Map<String, dynamic> json) =>
    _$BrandDTOImpl(
      id: (json['id'] as num).toInt(),
      brandName: json['brand_name'] as String,
      brandImage: json['brand_image'] as String,
    );

Map<String, dynamic> _$$BrandDTOImplToJson(_$BrandDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand_name': instance.brandName,
      'brand_image': instance.brandImage,
    };
