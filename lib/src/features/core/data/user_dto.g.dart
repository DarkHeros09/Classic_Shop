// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$$_UserDTOFromJson(Map<String, dynamic> json) => _$_UserDTO(
      id: json['id'] as int,
      username: json['username'] as String,
      email: json['email'] as String,
      telephone: json['telephone'] as int,
      shoppingCartId: json['cart_id'] as int,
      wishListId: json['wish_id'] as int,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$_UserDTOToJson(_$_UserDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'telephone': instance.telephone,
      'cart_id': instance.shoppingCartId,
      'wish_id': instance.wishListId,
      'password': instance.password,
    };
