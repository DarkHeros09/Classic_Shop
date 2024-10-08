// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_type_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentTypeDTO _$PaymentTypeDTOFromJson(Map<String, dynamic> json) {
  return _PaymentTypeDTO.fromJson(json);
}

/// @nodoc
mixin _$PaymentTypeDTO {
  int get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  /// Serializes this PaymentTypeDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentTypeDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentTypeDTOCopyWith<PaymentTypeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentTypeDTOCopyWith<$Res> {
  factory $PaymentTypeDTOCopyWith(
          PaymentTypeDTO value, $Res Function(PaymentTypeDTO) then) =
      _$PaymentTypeDTOCopyWithImpl<$Res, PaymentTypeDTO>;
  @useResult
  $Res call({int id, String value, bool isActive});
}

/// @nodoc
class _$PaymentTypeDTOCopyWithImpl<$Res, $Val extends PaymentTypeDTO>
    implements $PaymentTypeDTOCopyWith<$Res> {
  _$PaymentTypeDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentTypeDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentTypeDTOImplCopyWith<$Res>
    implements $PaymentTypeDTOCopyWith<$Res> {
  factory _$$PaymentTypeDTOImplCopyWith(_$PaymentTypeDTOImpl value,
          $Res Function(_$PaymentTypeDTOImpl) then) =
      __$$PaymentTypeDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String value, bool isActive});
}

/// @nodoc
class __$$PaymentTypeDTOImplCopyWithImpl<$Res>
    extends _$PaymentTypeDTOCopyWithImpl<$Res, _$PaymentTypeDTOImpl>
    implements _$$PaymentTypeDTOImplCopyWith<$Res> {
  __$$PaymentTypeDTOImplCopyWithImpl(
      _$PaymentTypeDTOImpl _value, $Res Function(_$PaymentTypeDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentTypeDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? isActive = null,
  }) {
    return _then(_$PaymentTypeDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentTypeDTOImpl extends _PaymentTypeDTO {
  const _$PaymentTypeDTOImpl(
      {required this.id, required this.value, required this.isActive})
      : super._();

  factory _$PaymentTypeDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentTypeDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String value;
  @override
  final bool isActive;

  @override
  String toString() {
    return 'PaymentTypeDTO(id: $id, value: $value, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentTypeDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, value, isActive);

  /// Create a copy of PaymentTypeDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentTypeDTOImplCopyWith<_$PaymentTypeDTOImpl> get copyWith =>
      __$$PaymentTypeDTOImplCopyWithImpl<_$PaymentTypeDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentTypeDTOImplToJson(
      this,
    );
  }
}

abstract class _PaymentTypeDTO extends PaymentTypeDTO {
  const factory _PaymentTypeDTO(
      {required final int id,
      required final String value,
      required final bool isActive}) = _$PaymentTypeDTOImpl;
  const _PaymentTypeDTO._() : super._();

  factory _PaymentTypeDTO.fromJson(Map<String, dynamic> json) =
      _$PaymentTypeDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get value;
  @override
  bool get isActive;

  /// Create a copy of PaymentTypeDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentTypeDTOImplCopyWith<_$PaymentTypeDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
