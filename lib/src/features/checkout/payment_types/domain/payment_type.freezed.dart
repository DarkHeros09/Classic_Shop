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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentType {
  int get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
abstract class _$$_PaymentTypeCopyWith<$Res>
    implements $PaymentTypeCopyWith<$Res> {
  factory _$$_PaymentTypeCopyWith(
          _$_PaymentType value, $Res Function(_$_PaymentType) then) =
      __$$_PaymentTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String value, bool isActive});
}

/// @nodoc
class __$$_PaymentTypeCopyWithImpl<$Res>
    extends _$PaymentTypeCopyWithImpl<$Res, _$_PaymentType>
    implements _$$_PaymentTypeCopyWith<$Res> {
  __$$_PaymentTypeCopyWithImpl(
      _$_PaymentType _value, $Res Function(_$_PaymentType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? isActive = null,
  }) {
    return _then(_$_PaymentType(
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

class _$_PaymentType extends _PaymentType {
  const _$_PaymentType(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, value, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentTypeCopyWith<_$_PaymentType> get copyWith =>
      __$$_PaymentTypeCopyWithImpl<_$_PaymentType>(this, _$identity);
}

abstract class _PaymentType extends PaymentType {
  const factory _PaymentType(
      {required final int id,
      required final String value,
      required final bool isActive}) = _$_PaymentType;
  const _PaymentType._() : super._();

  @override
  int get id;
  @override
  String get value;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentTypeCopyWith<_$_PaymentType> get copyWith =>
      throw _privateConstructorUsedError;
}
