// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_headers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseHeadersImpl _$$ResponseHeadersImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseHeadersImpl(
      etag: json['etag'] as String?,
      nextAvailable: json['next_available'] as bool?,
    );

Map<String, dynamic> _$$ResponseHeadersImplToJson(
        _$ResponseHeadersImpl instance) =>
    <String, dynamic>{
      'etag': instance.etag,
      'next_available': instance.nextAvailable,
    };
