// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_promotions_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandPromotionsDTO _$BrandPromotionsDTOFromJson(Map<String, dynamic> json) {
  return _BrandPromotionsDTO.fromJson(json);
}

/// @nodoc
mixin _$BrandPromotionsDTO {
  int? get brandId => throw _privateConstructorUsedError;
  int? get promotionId => throw _privateConstructorUsedError;
  String? get brandPromotionImage => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandPromotionsDTOCopyWith<BrandPromotionsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandPromotionsDTOCopyWith<$Res> {
  factory $BrandPromotionsDTOCopyWith(
          BrandPromotionsDTO value, $Res Function(BrandPromotionsDTO) then) =
      _$BrandPromotionsDTOCopyWithImpl<$Res, BrandPromotionsDTO>;
  @useResult
  $Res call(
      {int? brandId,
      int? promotionId,
      String? brandPromotionImage,
      bool? active});
}

/// @nodoc
class _$BrandPromotionsDTOCopyWithImpl<$Res, $Val extends BrandPromotionsDTO>
    implements $BrandPromotionsDTOCopyWith<$Res> {
  _$BrandPromotionsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandId = freezed,
    Object? promotionId = freezed,
    Object? brandPromotionImage = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      brandId: freezed == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as int?,
      promotionId: freezed == promotionId
          ? _value.promotionId
          : promotionId // ignore: cast_nullable_to_non_nullable
              as int?,
      brandPromotionImage: freezed == brandPromotionImage
          ? _value.brandPromotionImage
          : brandPromotionImage // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BrandPromotionsDTOCopyWith<$Res>
    implements $BrandPromotionsDTOCopyWith<$Res> {
  factory _$$_BrandPromotionsDTOCopyWith(_$_BrandPromotionsDTO value,
          $Res Function(_$_BrandPromotionsDTO) then) =
      __$$_BrandPromotionsDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? brandId,
      int? promotionId,
      String? brandPromotionImage,
      bool? active});
}

/// @nodoc
class __$$_BrandPromotionsDTOCopyWithImpl<$Res>
    extends _$BrandPromotionsDTOCopyWithImpl<$Res, _$_BrandPromotionsDTO>
    implements _$$_BrandPromotionsDTOCopyWith<$Res> {
  __$$_BrandPromotionsDTOCopyWithImpl(
      _$_BrandPromotionsDTO _value, $Res Function(_$_BrandPromotionsDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandId = freezed,
    Object? promotionId = freezed,
    Object? brandPromotionImage = freezed,
    Object? active = freezed,
  }) {
    return _then(_$_BrandPromotionsDTO(
      brandId: freezed == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as int?,
      promotionId: freezed == promotionId
          ? _value.promotionId
          : promotionId // ignore: cast_nullable_to_non_nullable
              as int?,
      brandPromotionImage: freezed == brandPromotionImage
          ? _value.brandPromotionImage
          : brandPromotionImage // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BrandPromotionsDTO extends _BrandPromotionsDTO {
  const _$_BrandPromotionsDTO(
      {required this.brandId,
      required this.promotionId,
      required this.brandPromotionImage,
      required this.active})
      : super._();

  factory _$_BrandPromotionsDTO.fromJson(Map<String, dynamic> json) =>
      _$$_BrandPromotionsDTOFromJson(json);

  @override
  final int? brandId;
  @override
  final int? promotionId;
  @override
  final String? brandPromotionImage;
  @override
  final bool? active;

  @override
  String toString() {
    return 'BrandPromotionsDTO(brandId: $brandId, promotionId: $promotionId, brandPromotionImage: $brandPromotionImage, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrandPromotionsDTO &&
            (identical(other.brandId, brandId) || other.brandId == brandId) &&
            (identical(other.promotionId, promotionId) ||
                other.promotionId == promotionId) &&
            (identical(other.brandPromotionImage, brandPromotionImage) ||
                other.brandPromotionImage == brandPromotionImage) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, brandId, promotionId, brandPromotionImage, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BrandPromotionsDTOCopyWith<_$_BrandPromotionsDTO> get copyWith =>
      __$$_BrandPromotionsDTOCopyWithImpl<_$_BrandPromotionsDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandPromotionsDTOToJson(
      this,
    );
  }
}

abstract class _BrandPromotionsDTO extends BrandPromotionsDTO {
  const factory _BrandPromotionsDTO(
      {required final int? brandId,
      required final int? promotionId,
      required final String? brandPromotionImage,
      required final bool? active}) = _$_BrandPromotionsDTO;
  const _BrandPromotionsDTO._() : super._();

  factory _BrandPromotionsDTO.fromJson(Map<String, dynamic> json) =
      _$_BrandPromotionsDTO.fromJson;

  @override
  int? get brandId;
  @override
  int? get promotionId;
  @override
  String? get brandPromotionImage;
  @override
  bool? get active;
  @override
  @JsonKey(ignore: true)
  _$$_BrandPromotionsDTOCopyWith<_$_BrandPromotionsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
