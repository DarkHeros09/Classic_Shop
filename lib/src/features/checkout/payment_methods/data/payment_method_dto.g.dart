// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentMethodDTOImpl _$$PaymentMethodDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentMethodDTOImpl(
      id: (json['id'] as num).toInt(),
      paymentTypeId: (json['payment_type_id'] as num).toInt(),
      provider: json['provider'] as String,
    );

Map<String, dynamic> _$$PaymentMethodDTOImplToJson(
        _$PaymentMethodDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'payment_type_id': instance.paymentTypeId,
      'provider': instance.provider,
    };
