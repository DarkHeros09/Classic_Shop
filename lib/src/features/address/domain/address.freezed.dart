// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Address {
  int get userId => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  int? get defaultAddress => throw _privateConstructorUsedError;
  String get addressLine => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {int userId,
      int? id,
      int? defaultAddress,
      String addressLine,
      String region,
      String city});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = freezed,
    Object? defaultAddress = freezed,
    Object? addressLine = null,
    Object? region = null,
    Object? city = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      defaultAddress: freezed == defaultAddress
          ? _value.defaultAddress
          : defaultAddress // ignore: cast_nullable_to_non_nullable
              as int?,
      addressLine: null == addressLine
          ? _value.addressLine
          : addressLine // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$_AddressCopyWith(
          _$_Address value, $Res Function(_$_Address) then) =
      __$$_AddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int userId,
      int? id,
      int? defaultAddress,
      String addressLine,
      String region,
      String city});
}

/// @nodoc
class __$$_AddressCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$_Address>
    implements _$$_AddressCopyWith<$Res> {
  __$$_AddressCopyWithImpl(_$_Address _value, $Res Function(_$_Address) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = freezed,
    Object? defaultAddress = freezed,
    Object? addressLine = null,
    Object? region = null,
    Object? city = null,
  }) {
    return _then(_$_Address(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      defaultAddress: freezed == defaultAddress
          ? _value.defaultAddress
          : defaultAddress // ignore: cast_nullable_to_non_nullable
              as int?,
      addressLine: null == addressLine
          ? _value.addressLine
          : addressLine // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Address extends _Address {
  const _$_Address(
      {required this.userId,
      required this.id,
      required this.defaultAddress,
      required this.addressLine,
      required this.region,
      required this.city})
      : super._();

  @override
  final int userId;
  @override
  final int? id;
  @override
  final int? defaultAddress;
  @override
  final String addressLine;
  @override
  final String region;
  @override
  final String city;

  @override
  String toString() {
    return 'Address(userId: $userId, id: $id, defaultAddress: $defaultAddress, addressLine: $addressLine, region: $region, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Address &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.defaultAddress, defaultAddress) ||
                other.defaultAddress == defaultAddress) &&
            (identical(other.addressLine, addressLine) ||
                other.addressLine == addressLine) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.city, city) || other.city == city));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, userId, id, defaultAddress, addressLine, region, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      __$$_AddressCopyWithImpl<_$_Address>(this, _$identity);
}

abstract class _Address extends Address {
  const factory _Address(
      {required final int userId,
      required final int? id,
      required final int? defaultAddress,
      required final String addressLine,
      required final String region,
      required final String city}) = _$_Address;
  const _Address._() : super._();

  @override
  int get userId;
  @override
  int? get id;
  @override
  int? get defaultAddress;
  @override
  String get addressLine;
  @override
  String get region;
  @override
  String get city;
  @override
  @JsonKey(ignore: true)
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      throw _privateConstructorUsedError;
}
