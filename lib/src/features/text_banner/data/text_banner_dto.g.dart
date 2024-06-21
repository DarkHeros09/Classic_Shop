// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_banner_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TextBannerDTOImpl _$$TextBannerDTOImplFromJson(Map<String, dynamic> json) =>
    _$TextBannerDTOImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$TextBannerDTOImplToJson(_$TextBannerDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };
