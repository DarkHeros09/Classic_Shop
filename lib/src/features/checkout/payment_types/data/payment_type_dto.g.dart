// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_type_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentTypeDTOImpl _$$PaymentTypeDTOImplFromJson(Map<String, dynamic> json) =>
    _$PaymentTypeDTOImpl(
      id: (json['id'] as num).toInt(),
      value: json['value'] as String,
      isActive: json['is_active'] as bool,
    );

Map<String, dynamic> _$$PaymentTypeDTOImplToJson(
        _$PaymentTypeDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'is_active': instance.isActive,
    };
