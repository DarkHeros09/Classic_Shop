// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressDTO _$$_AddressDTOFromJson(Map<String, dynamic> json) =>
    _$_AddressDTO(
      userId: json['user_id'] as int,
      id: json['address_id'] as int?,
      defaultAddress: json['default_address'] as int?,
      addressLine: json['address_line'] as String,
      region: json['region'] as String,
      city: json['city'] as String,
    );

Map<String, dynamic> _$$_AddressDTOToJson(_$_AddressDTO instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'address_id': instance.id,
      'default_address': instance.defaultAddress,
      'address_line': instance.addressLine,
      'region': instance.region,
      'city': instance.city,
    };
