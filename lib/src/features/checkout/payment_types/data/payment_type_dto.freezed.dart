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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentTypeDTO _$PaymentTypeDTOFromJson(Map<String, dynamic> json) {
  return _PaymentTypeDTO.fromJson(json);
}

/// @nodoc
mixin _$PaymentTypeDTO {
  int get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
abstract class _$$_PaymentTypeDTOCopyWith<$Res>
    implements $PaymentTypeDTOCopyWith<$Res> {
  factory _$$_PaymentTypeDTOCopyWith(
          _$_PaymentTypeDTO value, $Res Function(_$_PaymentTypeDTO) then) =
      __$$_PaymentTypeDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String value, bool isActive});
}

/// @nodoc
class __$$_PaymentTypeDTOCopyWithImpl<$Res>
    extends _$PaymentTypeDTOCopyWithImpl<$Res, _$_PaymentTypeDTO>
    implements _$$_PaymentTypeDTOCopyWith<$Res> {
  __$$_PaymentTypeDTOCopyWithImpl(
      _$_PaymentTypeDTO _value, $Res Function(_$_PaymentTypeDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? isActive = null,
  }) {
    return _then(_$_PaymentTypeDTO(
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
class _$_PaymentTypeDTO extends _PaymentTypeDTO {
  const _$_PaymentTypeDTO(
      {required this.id, required this.value, required this.isActive})
      : super._();

  factory _$_PaymentTypeDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentTypeDTOFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentTypeDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, value, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentTypeDTOCopyWith<_$_PaymentTypeDTO> get copyWith =>
      __$$_PaymentTypeDTOCopyWithImpl<_$_PaymentTypeDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentTypeDTOToJson(
      this,
    );
  }
}

abstract class _PaymentTypeDTO extends PaymentTypeDTO {
  const factory _PaymentTypeDTO(
      {required final int id,
      required final String value,
      required final bool isActive}) = _$_PaymentTypeDTO;
  const _PaymentTypeDTO._() : super._();

  factory _PaymentTypeDTO.fromJson(Map<String, dynamic> json) =
      _$_PaymentTypeDTO.fromJson;

  @override
  int get id;
  @override
  String get value;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentTypeDTOCopyWith<_$_PaymentTypeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
