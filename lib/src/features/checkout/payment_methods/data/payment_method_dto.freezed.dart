// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentMethodDTO _$PaymentMethodDTOFromJson(Map<String, dynamic> json) {
  return _PaymentMethodDTO.fromJson(json);
}

/// @nodoc
mixin _$PaymentMethodDTO {
  int get id => throw _privateConstructorUsedError;
  int get paymentTypeId => throw _privateConstructorUsedError;
  String get provider => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentMethodDTOCopyWith<PaymentMethodDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodDTOCopyWith<$Res> {
  factory $PaymentMethodDTOCopyWith(
          PaymentMethodDTO value, $Res Function(PaymentMethodDTO) then) =
      _$PaymentMethodDTOCopyWithImpl<$Res, PaymentMethodDTO>;
  @useResult
  $Res call({int id, int paymentTypeId, String provider});
}

/// @nodoc
class _$PaymentMethodDTOCopyWithImpl<$Res, $Val extends PaymentMethodDTO>
    implements $PaymentMethodDTOCopyWith<$Res> {
  _$PaymentMethodDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? paymentTypeId = null,
    Object? provider = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      paymentTypeId: null == paymentTypeId
          ? _value.paymentTypeId
          : paymentTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentMethodDTOImplCopyWith<$Res>
    implements $PaymentMethodDTOCopyWith<$Res> {
  factory _$$PaymentMethodDTOImplCopyWith(_$PaymentMethodDTOImpl value,
          $Res Function(_$PaymentMethodDTOImpl) then) =
      __$$PaymentMethodDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int paymentTypeId, String provider});
}

/// @nodoc
class __$$PaymentMethodDTOImplCopyWithImpl<$Res>
    extends _$PaymentMethodDTOCopyWithImpl<$Res, _$PaymentMethodDTOImpl>
    implements _$$PaymentMethodDTOImplCopyWith<$Res> {
  __$$PaymentMethodDTOImplCopyWithImpl(_$PaymentMethodDTOImpl _value,
      $Res Function(_$PaymentMethodDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? paymentTypeId = null,
    Object? provider = null,
  }) {
    return _then(_$PaymentMethodDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      paymentTypeId: null == paymentTypeId
          ? _value.paymentTypeId
          : paymentTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentMethodDTOImpl extends _PaymentMethodDTO {
  const _$PaymentMethodDTOImpl(
      {required this.id, required this.paymentTypeId, required this.provider})
      : super._();

  factory _$PaymentMethodDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentMethodDTOImplFromJson(json);

  @override
  final int id;
  @override
  final int paymentTypeId;
  @override
  final String provider;

  @override
  String toString() {
    return 'PaymentMethodDTO(id: $id, paymentTypeId: $paymentTypeId, provider: $provider)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.paymentTypeId, paymentTypeId) ||
                other.paymentTypeId == paymentTypeId) &&
            (identical(other.provider, provider) ||
                other.provider == provider));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, paymentTypeId, provider);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMethodDTOImplCopyWith<_$PaymentMethodDTOImpl> get copyWith =>
      __$$PaymentMethodDTOImplCopyWithImpl<_$PaymentMethodDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentMethodDTOImplToJson(
      this,
    );
  }
}

abstract class _PaymentMethodDTO extends PaymentMethodDTO {
  const factory _PaymentMethodDTO(
      {required final int id,
      required final int paymentTypeId,
      required final String provider}) = _$PaymentMethodDTOImpl;
  const _PaymentMethodDTO._() : super._();

  factory _PaymentMethodDTO.fromJson(Map<String, dynamic> json) =
      _$PaymentMethodDTOImpl.fromJson;

  @override
  int get id;
  @override
  int get paymentTypeId;
  @override
  String get provider;
  @override
  @JsonKey(ignore: true)
  _$$PaymentMethodDTOImplCopyWith<_$PaymentMethodDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
