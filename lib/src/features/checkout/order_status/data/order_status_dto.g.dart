// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderStatusDTOImpl _$$OrderStatusDTOImplFromJson(Map<String, dynamic> json) =>
    _$OrderStatusDTOImpl(
      id: (json['id'] as num).toInt(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$OrderStatusDTOImplToJson(
        _$OrderStatusDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
    };
