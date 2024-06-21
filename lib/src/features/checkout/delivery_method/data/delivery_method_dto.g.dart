// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_method_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryMethodDTOImpl _$$DeliveryMethodDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveryMethodDTOImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      price: json['price'] as String,
    );

Map<String, dynamic> _$$DeliveryMethodDTOImplToJson(
        _$DeliveryMethodDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
    };
