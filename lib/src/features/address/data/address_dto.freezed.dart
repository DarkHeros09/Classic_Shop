// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressDTO _$AddressDTOFromJson(Map<String, dynamic> json) {
  return _AddressDTO.fromJson(json);
}

/// @nodoc
mixin _$AddressDTO {
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_id')
  int? get id => throw _privateConstructorUsedError;
  int? get defaultAddress => throw _privateConstructorUsedError;
  String get addressLine => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressDTOCopyWith<AddressDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDTOCopyWith<$Res> {
  factory $AddressDTOCopyWith(
          AddressDTO value, $Res Function(AddressDTO) then) =
      _$AddressDTOCopyWithImpl<$Res, AddressDTO>;
  @useResult
  $Res call(
      {int userId,
      @JsonKey(name: 'address_id') int? id,
      int? defaultAddress,
      String addressLine,
      String region,
      String city});
}

/// @nodoc
class _$AddressDTOCopyWithImpl<$Res, $Val extends AddressDTO>
    implements $AddressDTOCopyWith<$Res> {
  _$AddressDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$AddressDTOImplCopyWith<$Res>
    implements $AddressDTOCopyWith<$Res> {
  factory _$$AddressDTOImplCopyWith(
          _$AddressDTOImpl value, $Res Function(_$AddressDTOImpl) then) =
      __$$AddressDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int userId,
      @JsonKey(name: 'address_id') int? id,
      int? defaultAddress,
      String addressLine,
      String region,
      String city});
}

/// @nodoc
class __$$AddressDTOImplCopyWithImpl<$Res>
    extends _$AddressDTOCopyWithImpl<$Res, _$AddressDTOImpl>
    implements _$$AddressDTOImplCopyWith<$Res> {
  __$$AddressDTOImplCopyWithImpl(
      _$AddressDTOImpl _value, $Res Function(_$AddressDTOImpl) _then)
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
    return _then(_$AddressDTOImpl(
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
@JsonSerializable()
class _$AddressDTOImpl extends _AddressDTO {
  const _$AddressDTOImpl(
      {required this.userId,
      @JsonKey(name: 'address_id') required this.id,
      required this.defaultAddress,
      required this.addressLine,
      required this.region,
      required this.city})
      : super._();

  factory _$AddressDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressDTOImplFromJson(json);

  @override
  final int userId;
  @override
  @JsonKey(name: 'address_id')
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
    return 'AddressDTO(userId: $userId, id: $id, defaultAddress: $defaultAddress, addressLine: $addressLine, region: $region, city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressDTOImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.defaultAddress, defaultAddress) ||
                other.defaultAddress == defaultAddress) &&
            (identical(other.addressLine, addressLine) ||
                other.addressLine == addressLine) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, id, defaultAddress, addressLine, region, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressDTOImplCopyWith<_$AddressDTOImpl> get copyWith =>
      __$$AddressDTOImplCopyWithImpl<_$AddressDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressDTOImplToJson(
      this,
    );
  }
}

abstract class _AddressDTO extends AddressDTO {
  const factory _AddressDTO(
      {required final int userId,
      @JsonKey(name: 'address_id') required final int? id,
      required final int? defaultAddress,
      required final String addressLine,
      required final String region,
      required final String city}) = _$AddressDTOImpl;
  const _AddressDTO._() : super._();

  factory _AddressDTO.fromJson(Map<String, dynamic> json) =
      _$AddressDTOImpl.fromJson;

  @override
  int get userId;
  @override
  @JsonKey(name: 'address_id')
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
  _$$AddressDTOImplCopyWith<_$AddressDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
