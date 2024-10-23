// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressDTOImpl _$$AddressDTOImplFromJson(Map<String, dynamic> json) =>
    _$AddressDTOImpl(
      userId: (json['user_id'] as num).toInt(),
      id: (json['address_id'] as num?)?.toInt(),
      defaultAddress: (json['default_address'] as num?)?.toInt(),
      name: json['name'] as String,
      telephone: (json['telephone'] as num).toInt(),
      addressLine: json['address_line'] as String,
      region: json['region'] as String,
      city: json['city'] as String,
    );

Map<String, dynamic> _$$AddressDTOImplToJson(_$AddressDTOImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'address_id': instance.id,
      'default_address': instance.defaultAddress,
      'name': instance.name,
      'telephone': instance.telephone,
      'address_line': instance.addressLine,
      'region': instance.region,
      'city': instance.city,
    };
