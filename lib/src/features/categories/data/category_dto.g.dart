// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryDTO _$$_CategoryDTOFromJson(Map<String, dynamic> json) =>
    _$_CategoryDTO(
      id: json['id'] as int,
      parentCategoryId: json['parent_category_id'] as int?,
      categoryName: json['category_name'] as String,
      categoryImage: json['category_image'] as String,
    );

Map<String, dynamic> _$$_CategoryDTOToJson(_$_CategoryDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_category_id': instance.parentCategoryId,
      'category_name': instance.categoryName,
      'category_image': instance.categoryImage,
    };
