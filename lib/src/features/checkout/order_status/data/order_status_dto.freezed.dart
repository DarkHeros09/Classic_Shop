// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_status_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderStatusDTO _$OrderStatusDTOFromJson(Map<String, dynamic> json) {
  return _OrderStatusDTO.fromJson(json);
}

/// @nodoc
mixin _$OrderStatusDTO {
  int get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderStatusDTOCopyWith<OrderStatusDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStatusDTOCopyWith<$Res> {
  factory $OrderStatusDTOCopyWith(
          OrderStatusDTO value, $Res Function(OrderStatusDTO) then) =
      _$OrderStatusDTOCopyWithImpl<$Res, OrderStatusDTO>;
  @useResult
  $Res call({int id, String status});
}

/// @nodoc
class _$OrderStatusDTOCopyWithImpl<$Res, $Val extends OrderStatusDTO>
    implements $OrderStatusDTOCopyWith<$Res> {
  _$OrderStatusDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderStatusDTOCopyWith<$Res>
    implements $OrderStatusDTOCopyWith<$Res> {
  factory _$$_OrderStatusDTOCopyWith(
          _$_OrderStatusDTO value, $Res Function(_$_OrderStatusDTO) then) =
      __$$_OrderStatusDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String status});
}

/// @nodoc
class __$$_OrderStatusDTOCopyWithImpl<$Res>
    extends _$OrderStatusDTOCopyWithImpl<$Res, _$_OrderStatusDTO>
    implements _$$_OrderStatusDTOCopyWith<$Res> {
  __$$_OrderStatusDTOCopyWithImpl(
      _$_OrderStatusDTO _value, $Res Function(_$_OrderStatusDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
  }) {
    return _then(_$_OrderStatusDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderStatusDTO extends _OrderStatusDTO {
  const _$_OrderStatusDTO({required this.id, required this.status}) : super._();

  factory _$_OrderStatusDTO.fromJson(Map<String, dynamic> json) =>
      _$$_OrderStatusDTOFromJson(json);

  @override
  final int id;
  @override
  final String status;

  @override
  String toString() {
    return 'OrderStatusDTO(id: $id, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderStatusDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderStatusDTOCopyWith<_$_OrderStatusDTO> get copyWith =>
      __$$_OrderStatusDTOCopyWithImpl<_$_OrderStatusDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderStatusDTOToJson(
      this,
    );
  }
}

abstract class _OrderStatusDTO extends OrderStatusDTO {
  const factory _OrderStatusDTO(
      {required final int id,
      required final String status}) = _$_OrderStatusDTO;
  const _OrderStatusDTO._() : super._();

  factory _OrderStatusDTO.fromJson(Map<String, dynamic> json) =
      _$_OrderStatusDTO.fromJson;

  @override
  int get id;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$_OrderStatusDTOCopyWith<_$_OrderStatusDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
