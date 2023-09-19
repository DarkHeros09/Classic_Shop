// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credentials_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CredentialsDTO _$$_CredentialsDTOFromJson(Map<String, dynamic> json) =>
    _$_CredentialsDTO(
      user: json['user'] == null
          ? null
          : UserDTO.fromJson(json['user'] as Map<String, dynamic>),
      userSessionId: json['user_session_id'] as String,
      accessToken: json['access_token'] as String,
      accessExpiration:
          DateTime.parse(json['access_token_expires_at'] as String),
      refreshToken: json['refresh_token'] as String?,
      refreshExpiration: json['refresh_token_expires_at'] == null
          ? null
          : DateTime.parse(json['refresh_token_expires_at'] as String),
    );

Map<String, dynamic> _$$_CredentialsDTOToJson(_$_CredentialsDTO instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
      'user_session_id': instance.userSessionId,
      'access_token': instance.accessToken,
      'access_token_expires_at': instance.accessExpiration.toIso8601String(),
      'refresh_token': instance.refreshToken,
      'refresh_token_expires_at': instance.refreshExpiration?.toIso8601String(),
    };
