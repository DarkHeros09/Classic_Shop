// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryDTOImpl _$$CategoryDTOImplFromJson(Map<String, dynamic> json) =>
    _$CategoryDTOImpl(
      id: (json['id'] as num).toInt(),
      parentCategoryId: (json['parent_category_id'] as num?)?.toInt(),
      categoryName: json['category_name'] as String,
      categoryImage: json['category_image'] as String,
    );

Map<String, dynamic> _$$CategoryDTOImplToJson(_$CategoryDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_category_id': instance.parentCategoryId,
      'category_name': instance.categoryName,
      'category_image': instance.categoryImage,
    };
