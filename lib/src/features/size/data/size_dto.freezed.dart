// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'size_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SizeDTO _$SizeDTOFromJson(Map<String, dynamic> json) {
  return _SizeDTO.fromJson(json);
}

/// @nodoc
mixin _$SizeDTO {
  int get id => throw _privateConstructorUsedError;
  int get productItemId => throw _privateConstructorUsedError;
  String get sizeValue => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;

  /// Serializes this SizeDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SizeDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SizeDTOCopyWith<SizeDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeDTOCopyWith<$Res> {
  factory $SizeDTOCopyWith(SizeDTO value, $Res Function(SizeDTO) then) =
      _$SizeDTOCopyWithImpl<$Res, SizeDTO>;
  @useResult
  $Res call({int id, int productItemId, String sizeValue, int qty});
}

/// @nodoc
class _$SizeDTOCopyWithImpl<$Res, $Val extends SizeDTO>
    implements $SizeDTOCopyWith<$Res> {
  _$SizeDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SizeDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productItemId = null,
    Object? sizeValue = null,
    Object? qty = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productItemId: null == productItemId
          ? _value.productItemId
          : productItemId // ignore: cast_nullable_to_non_nullable
              as int,
      sizeValue: null == sizeValue
          ? _value.sizeValue
          : sizeValue // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SizeDTOImplCopyWith<$Res> implements $SizeDTOCopyWith<$Res> {
  factory _$$SizeDTOImplCopyWith(
          _$SizeDTOImpl value, $Res Function(_$SizeDTOImpl) then) =
      __$$SizeDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int productItemId, String sizeValue, int qty});
}

/// @nodoc
class __$$SizeDTOImplCopyWithImpl<$Res>
    extends _$SizeDTOCopyWithImpl<$Res, _$SizeDTOImpl>
    implements _$$SizeDTOImplCopyWith<$Res> {
  __$$SizeDTOImplCopyWithImpl(
      _$SizeDTOImpl _value, $Res Function(_$SizeDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of SizeDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productItemId = null,
    Object? sizeValue = null,
    Object? qty = null,
  }) {
    return _then(_$SizeDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productItemId: null == productItemId
          ? _value.productItemId
          : productItemId // ignore: cast_nullable_to_non_nullable
              as int,
      sizeValue: null == sizeValue
          ? _value.sizeValue
          : sizeValue // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SizeDTOImpl extends _SizeDTO {
  const _$SizeDTOImpl(
      {required this.id,
      required this.productItemId,
      required this.sizeValue,
      required this.qty})
      : super._();

  factory _$SizeDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SizeDTOImplFromJson(json);

  @override
  final int id;
  @override
  final int productItemId;
  @override
  final String sizeValue;
  @override
  final int qty;

  @override
  String toString() {
    return 'SizeDTO(id: $id, productItemId: $productItemId, sizeValue: $sizeValue, qty: $qty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SizeDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productItemId, productItemId) ||
                other.productItemId == productItemId) &&
            (identical(other.sizeValue, sizeValue) ||
                other.sizeValue == sizeValue) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, productItemId, sizeValue, qty);

  /// Create a copy of SizeDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SizeDTOImplCopyWith<_$SizeDTOImpl> get copyWith =>
      __$$SizeDTOImplCopyWithImpl<_$SizeDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SizeDTOImplToJson(
      this,
    );
  }
}

abstract class _SizeDTO extends SizeDTO {
  const factory _SizeDTO(
      {required final int id,
      required final int productItemId,
      required final String sizeValue,
      required final int qty}) = _$SizeDTOImpl;
  const _SizeDTO._() : super._();

  factory _SizeDTO.fromJson(Map<String, dynamic> json) = _$SizeDTOImpl.fromJson;

  @override
  int get id;
  @override
  int get productItemId;
  @override
  String get sizeValue;
  @override
  int get qty;

  /// Create a copy of SizeDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SizeDTOImplCopyWith<_$SizeDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
