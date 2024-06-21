// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDTOImpl _$$UserDTOImplFromJson(Map<String, dynamic> json) =>
    _$UserDTOImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      email: json['email'] as String,
      telephone: (json['telephone'] as num).toInt(),
      shoppingCartId: (json['cart_id'] as num).toInt(),
      wishListId: (json['wish_id'] as num).toInt(),
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$UserDTOImplToJson(_$UserDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'telephone': instance.telephone,
      'cart_id': instance.shoppingCartId,
      'wish_id': instance.wishListId,
      'password': instance.password,
    };
