// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'size_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SizeDTOImpl _$$SizeDTOImplFromJson(Map<String, dynamic> json) =>
    _$SizeDTOImpl(
      id: (json['id'] as num).toInt(),
      productItemId: (json['product_item_id'] as num).toInt(),
      sizeValue: json['size_value'] as String,
      qty: (json['qty'] as num).toInt(),
    );

Map<String, dynamic> _$$SizeDTOImplToJson(_$SizeDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_item_id': instance.productItemId,
      'size_value': instance.sizeValue,
      'qty': instance.qty,
    };
