// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BrandDTO _$BrandDTOFromJson(Map<String, dynamic> json) {
  return _BrandDTO.fromJson(json);
}

/// @nodoc
mixin _$BrandDTO {
  int get id => throw _privateConstructorUsedError;
  String get brandName => throw _privateConstructorUsedError;
  String get brandImage => throw _privateConstructorUsedError;

  /// Serializes this BrandDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BrandDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrandDTOCopyWith<BrandDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandDTOCopyWith<$Res> {
  factory $BrandDTOCopyWith(BrandDTO value, $Res Function(BrandDTO) then) =
      _$BrandDTOCopyWithImpl<$Res, BrandDTO>;
  @useResult
  $Res call({int id, String brandName, String brandImage});
}

/// @nodoc
class _$BrandDTOCopyWithImpl<$Res, $Val extends BrandDTO>
    implements $BrandDTOCopyWith<$Res> {
  _$BrandDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrandDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? brandName = null,
    Object? brandImage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      brandName: null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      brandImage: null == brandImage
          ? _value.brandImage
          : brandImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandDTOImplCopyWith<$Res>
    implements $BrandDTOCopyWith<$Res> {
  factory _$$BrandDTOImplCopyWith(
          _$BrandDTOImpl value, $Res Function(_$BrandDTOImpl) then) =
      __$$BrandDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String brandName, String brandImage});
}

/// @nodoc
class __$$BrandDTOImplCopyWithImpl<$Res>
    extends _$BrandDTOCopyWithImpl<$Res, _$BrandDTOImpl>
    implements _$$BrandDTOImplCopyWith<$Res> {
  __$$BrandDTOImplCopyWithImpl(
      _$BrandDTOImpl _value, $Res Function(_$BrandDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? brandName = null,
    Object? brandImage = null,
  }) {
    return _then(_$BrandDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      brandName: null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      brandImage: null == brandImage
          ? _value.brandImage
          : brandImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandDTOImpl extends _BrandDTO {
  const _$BrandDTOImpl(
      {required this.id, required this.brandName, required this.brandImage})
      : super._();

  factory _$BrandDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String brandName;
  @override
  final String brandImage;

  @override
  String toString() {
    return 'BrandDTO(id: $id, brandName: $brandName, brandImage: $brandImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            (identical(other.brandImage, brandImage) ||
                other.brandImage == brandImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, brandName, brandImage);

  /// Create a copy of BrandDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandDTOImplCopyWith<_$BrandDTOImpl> get copyWith =>
      __$$BrandDTOImplCopyWithImpl<_$BrandDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandDTOImplToJson(
      this,
    );
  }
}

abstract class _BrandDTO extends BrandDTO {
  const factory _BrandDTO(
      {required final int id,
      required final String brandName,
      required final String brandImage}) = _$BrandDTOImpl;
  const _BrandDTO._() : super._();

  factory _BrandDTO.fromJson(Map<String, dynamic> json) =
      _$BrandDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get brandName;
  @override
  String get brandImage;

  /// Create a copy of BrandDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrandDTOImplCopyWith<_$BrandDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
