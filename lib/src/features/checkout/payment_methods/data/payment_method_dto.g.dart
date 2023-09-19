// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentMethodDTO _$$_PaymentMethodDTOFromJson(Map<String, dynamic> json) =>
    _$_PaymentMethodDTO(
      id: json['id'] as int,
      paymentTypeId: json['payment_type_id'] as int,
      provider: json['provider'] as String,
    );

Map<String, dynamic> _$$_PaymentMethodDTOToJson(_$_PaymentMethodDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'payment_type_id': instance.paymentTypeId,
      'provider': instance.provider,
    };
