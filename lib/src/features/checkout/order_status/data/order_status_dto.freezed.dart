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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderStatusDTO _$OrderStatusDTOFromJson(Map<String, dynamic> json) {
  return _OrderStatusDTO.fromJson(json);
}

/// @nodoc
mixin _$OrderStatusDTO {
  int get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this OrderStatusDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderStatusDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of OrderStatusDTO
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$OrderStatusDTOImplCopyWith<$Res>
    implements $OrderStatusDTOCopyWith<$Res> {
  factory _$$OrderStatusDTOImplCopyWith(_$OrderStatusDTOImpl value,
          $Res Function(_$OrderStatusDTOImpl) then) =
      __$$OrderStatusDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String status});
}

/// @nodoc
class __$$OrderStatusDTOImplCopyWithImpl<$Res>
    extends _$OrderStatusDTOCopyWithImpl<$Res, _$OrderStatusDTOImpl>
    implements _$$OrderStatusDTOImplCopyWith<$Res> {
  __$$OrderStatusDTOImplCopyWithImpl(
      _$OrderStatusDTOImpl _value, $Res Function(_$OrderStatusDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderStatusDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
  }) {
    return _then(_$OrderStatusDTOImpl(
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
class _$OrderStatusDTOImpl extends _OrderStatusDTO {
  const _$OrderStatusDTOImpl({required this.id, required this.status})
      : super._();

  factory _$OrderStatusDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderStatusDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String status;

  @override
  String toString() {
    return 'OrderStatusDTO(id: $id, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStatusDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, status);

  /// Create a copy of OrderStatusDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderStatusDTOImplCopyWith<_$OrderStatusDTOImpl> get copyWith =>
      __$$OrderStatusDTOImplCopyWithImpl<_$OrderStatusDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderStatusDTOImplToJson(
      this,
    );
  }
}

abstract class _OrderStatusDTO extends OrderStatusDTO {
  const factory _OrderStatusDTO(
      {required final int id,
      required final String status}) = _$OrderStatusDTOImpl;
  const _OrderStatusDTO._() : super._();

  factory _OrderStatusDTO.fromJson(Map<String, dynamic> json) =
      _$OrderStatusDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get status;

  /// Create a copy of OrderStatusDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderStatusDTOImplCopyWith<_$OrderStatusDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
