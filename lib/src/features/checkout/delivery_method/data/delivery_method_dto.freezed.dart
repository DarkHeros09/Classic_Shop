// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_method_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryMethodDTO _$DeliveryMethodDTOFromJson(Map<String, dynamic> json) {
  return _DeliveryMethodDTO.fromJson(json);
}

/// @nodoc
mixin _$DeliveryMethodDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryMethodDTOCopyWith<DeliveryMethodDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryMethodDTOCopyWith<$Res> {
  factory $DeliveryMethodDTOCopyWith(
          DeliveryMethodDTO value, $Res Function(DeliveryMethodDTO) then) =
      _$DeliveryMethodDTOCopyWithImpl<$Res, DeliveryMethodDTO>;
  @useResult
  $Res call({int id, String name, String price});
}

/// @nodoc
class _$DeliveryMethodDTOCopyWithImpl<$Res, $Val extends DeliveryMethodDTO>
    implements $DeliveryMethodDTOCopyWith<$Res> {
  _$DeliveryMethodDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveryMethodDTOCopyWith<$Res>
    implements $DeliveryMethodDTOCopyWith<$Res> {
  factory _$$_DeliveryMethodDTOCopyWith(_$_DeliveryMethodDTO value,
          $Res Function(_$_DeliveryMethodDTO) then) =
      __$$_DeliveryMethodDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String price});
}

/// @nodoc
class __$$_DeliveryMethodDTOCopyWithImpl<$Res>
    extends _$DeliveryMethodDTOCopyWithImpl<$Res, _$_DeliveryMethodDTO>
    implements _$$_DeliveryMethodDTOCopyWith<$Res> {
  __$$_DeliveryMethodDTOCopyWithImpl(
      _$_DeliveryMethodDTO _value, $Res Function(_$_DeliveryMethodDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_$_DeliveryMethodDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryMethodDTO extends _DeliveryMethodDTO {
  const _$_DeliveryMethodDTO(
      {required this.id, required this.name, required this.price})
      : super._();

  factory _$_DeliveryMethodDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryMethodDTOFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String price;

  @override
  String toString() {
    return 'DeliveryMethodDTO(id: $id, name: $name, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryMethodDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryMethodDTOCopyWith<_$_DeliveryMethodDTO> get copyWith =>
      __$$_DeliveryMethodDTOCopyWithImpl<_$_DeliveryMethodDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryMethodDTOToJson(
      this,
    );
  }
}

abstract class _DeliveryMethodDTO extends DeliveryMethodDTO {
  const factory _DeliveryMethodDTO(
      {required final int id,
      required final String name,
      required final String price}) = _$_DeliveryMethodDTO;
  const _DeliveryMethodDTO._() : super._();

  factory _DeliveryMethodDTO.fromJson(Map<String, dynamic> json) =
      _$_DeliveryMethodDTO.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get price;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryMethodDTOCopyWith<_$_DeliveryMethodDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
