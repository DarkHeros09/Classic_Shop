// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentType {
  int get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  /// Create a copy of PaymentType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentTypeCopyWith<PaymentType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentTypeCopyWith<$Res> {
  factory $PaymentTypeCopyWith(
          PaymentType value, $Res Function(PaymentType) then) =
      _$PaymentTypeCopyWithImpl<$Res, PaymentType>;
  @useResult
  $Res call({int id, String value, bool isActive});
}

/// @nodoc
class _$PaymentTypeCopyWithImpl<$Res, $Val extends PaymentType>
    implements $PaymentTypeCopyWith<$Res> {
  _$PaymentTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentType
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
abstract class _$$PaymentTypeImplCopyWith<$Res>
    implements $PaymentTypeCopyWith<$Res> {
  factory _$$PaymentTypeImplCopyWith(
          _$PaymentTypeImpl value, $Res Function(_$PaymentTypeImpl) then) =
      __$$PaymentTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String value, bool isActive});
}

/// @nodoc
class __$$PaymentTypeImplCopyWithImpl<$Res>
    extends _$PaymentTypeCopyWithImpl<$Res, _$PaymentTypeImpl>
    implements _$$PaymentTypeImplCopyWith<$Res> {
  __$$PaymentTypeImplCopyWithImpl(
      _$PaymentTypeImpl _value, $Res Function(_$PaymentTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? isActive = null,
  }) {
    return _then(_$PaymentTypeImpl(
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

class _$PaymentTypeImpl extends _PaymentType {
  const _$PaymentTypeImpl(
      {required this.id, required this.value, required this.isActive})
      : super._();

  @override
  final int id;
  @override
  final String value;
  @override
  final bool isActive;

  @override
  String toString() {
    return 'PaymentType(id: $id, value: $value, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, value, isActive);

  /// Create a copy of PaymentType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentTypeImplCopyWith<_$PaymentTypeImpl> get copyWith =>
      __$$PaymentTypeImplCopyWithImpl<_$PaymentTypeImpl>(this, _$identity);
}

abstract class _PaymentType extends PaymentType {
  const factory _PaymentType(
      {required final int id,
      required final String value,
      required final bool isActive}) = _$PaymentTypeImpl;
  const _PaymentType._() : super._();

  @override
  int get id;
  @override
  String get value;
  @override
  bool get isActive;

  /// Create a copy of PaymentType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentTypeImplCopyWith<_$PaymentTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
