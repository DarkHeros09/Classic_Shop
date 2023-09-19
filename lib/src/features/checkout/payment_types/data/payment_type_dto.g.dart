// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_type_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentTypeDTO _$$_PaymentTypeDTOFromJson(Map<String, dynamic> json) =>
    _$_PaymentTypeDTO(
      id: json['id'] as int,
      value: json['value'] as String,
      isActive: json['is_active'] as bool,
    );

Map<String, dynamic> _$$_PaymentTypeDTOToJson(_$_PaymentTypeDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'is_active': instance.isActive,
    };
