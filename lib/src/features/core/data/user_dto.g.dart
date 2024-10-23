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
      isBlocked: json['is_blocked'] as bool?,
      isEmailVerified: json['is_email_verified'] as bool?,
      shoppingCartId: (json['cart_id'] as num?)?.toInt(),
      wishListId: (json['wish_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserDTOImplToJson(_$UserDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'is_blocked': instance.isBlocked,
      'is_email_verified': instance.isEmailVerified,
      'cart_id': instance.shoppingCartId,
      'wish_id': instance.wishListId,
    };
