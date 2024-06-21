// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenDTOImpl _$$TokenDTOImplFromJson(Map<String, dynamic> json) =>
    _$TokenDTOImpl(
      userSessionId: json['user_session_id'] as String,
      accessToken: json['access_token'] as String,
      accessExpiration:
          DateTime.parse(json['access_token_expires_at'] as String),
      refreshToken: json['refresh_token'] as String?,
      refreshExpiration: json['refresh_token_expires_at'] == null
          ? null
          : DateTime.parse(json['refresh_token_expires_at'] as String),
    );

Map<String, dynamic> _$$TokenDTOImplToJson(_$TokenDTOImpl instance) =>
    <String, dynamic>{
      'user_session_id': instance.userSessionId,
      'access_token': instance.accessToken,
      'access_token_expires_at': instance.accessExpiration.toIso8601String(),
      'refresh_token': instance.refreshToken,
      'refresh_token_expires_at': instance.refreshExpiration?.toIso8601String(),
    };
