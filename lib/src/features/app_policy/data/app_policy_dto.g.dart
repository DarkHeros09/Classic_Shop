// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_policy_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppPolicyDTOImpl _$$AppPolicyDTOImplFromJson(Map<String, dynamic> json) =>
    _$AppPolicyDTOImpl(
      id: (json['id'] as num).toInt(),
      policy: json['policy'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$AppPolicyDTOImplToJson(_$AppPolicyDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'policy': instance.policy,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
