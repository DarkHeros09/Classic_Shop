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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BrandPromotionsDTO _$BrandPromotionsDTOFromJson(Map<String, dynamic> json) {
  return _BrandPromotionsDTO.fromJson(json);
}

/// @nodoc
mixin _$BrandPromotionsDTO {
  int? get brandId => throw _privateConstructorUsedError;
  int? get promotionId => throw _privateConstructorUsedError;
  String? get brandPromotionImage => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;

  /// Serializes this BrandPromotionsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BrandPromotionsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      bool? active,
      DateTime? startDate,
      DateTime? endDate});
}

/// @nodoc
class _$BrandPromotionsDTOCopyWithImpl<$Res, $Val extends BrandPromotionsDTO>
    implements $BrandPromotionsDTOCopyWith<$Res> {
  _$BrandPromotionsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrandPromotionsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandId = freezed,
    Object? promotionId = freezed,
    Object? brandPromotionImage = freezed,
    Object? active = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
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
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandPromotionsDTOImplCopyWith<$Res>
    implements $BrandPromotionsDTOCopyWith<$Res> {
  factory _$$BrandPromotionsDTOImplCopyWith(_$BrandPromotionsDTOImpl value,
          $Res Function(_$BrandPromotionsDTOImpl) then) =
      __$$BrandPromotionsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? brandId,
      int? promotionId,
      String? brandPromotionImage,
      bool? active,
      DateTime? startDate,
      DateTime? endDate});
}

/// @nodoc
class __$$BrandPromotionsDTOImplCopyWithImpl<$Res>
    extends _$BrandPromotionsDTOCopyWithImpl<$Res, _$BrandPromotionsDTOImpl>
    implements _$$BrandPromotionsDTOImplCopyWith<$Res> {
  __$$BrandPromotionsDTOImplCopyWithImpl(_$BrandPromotionsDTOImpl _value,
      $Res Function(_$BrandPromotionsDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandPromotionsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandId = freezed,
    Object? promotionId = freezed,
    Object? brandPromotionImage = freezed,
    Object? active = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$BrandPromotionsDTOImpl(
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
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandPromotionsDTOImpl extends _BrandPromotionsDTO {
  const _$BrandPromotionsDTOImpl(
      {required this.brandId,
      required this.promotionId,
      required this.brandPromotionImage,
      required this.active,
      required this.startDate,
      required this.endDate})
      : super._();

  factory _$BrandPromotionsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandPromotionsDTOImplFromJson(json);

  @override
  final int? brandId;
  @override
  final int? promotionId;
  @override
  final String? brandPromotionImage;
  @override
  final bool? active;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;

  @override
  String toString() {
    return 'BrandPromotionsDTO(brandId: $brandId, promotionId: $promotionId, brandPromotionImage: $brandPromotionImage, active: $active, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandPromotionsDTOImpl &&
            (identical(other.brandId, brandId) || other.brandId == brandId) &&
            (identical(other.promotionId, promotionId) ||
                other.promotionId == promotionId) &&
            (identical(other.brandPromotionImage, brandPromotionImage) ||
                other.brandPromotionImage == brandPromotionImage) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, brandId, promotionId,
      brandPromotionImage, active, startDate, endDate);

  /// Create a copy of BrandPromotionsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandPromotionsDTOImplCopyWith<_$BrandPromotionsDTOImpl> get copyWith =>
      __$$BrandPromotionsDTOImplCopyWithImpl<_$BrandPromotionsDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandPromotionsDTOImplToJson(
      this,
    );
  }
}

abstract class _BrandPromotionsDTO extends BrandPromotionsDTO {
  const factory _BrandPromotionsDTO(
      {required final int? brandId,
      required final int? promotionId,
      required final String? brandPromotionImage,
      required final bool? active,
      required final DateTime? startDate,
      required final DateTime? endDate}) = _$BrandPromotionsDTOImpl;
  const _BrandPromotionsDTO._() : super._();

  factory _BrandPromotionsDTO.fromJson(Map<String, dynamic> json) =
      _$BrandPromotionsDTOImpl.fromJson;

  @override
  int? get brandId;
  @override
  int? get promotionId;
  @override
  String? get brandPromotionImage;
  @override
  bool? get active;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;

  /// Create a copy of BrandPromotionsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrandPromotionsDTOImplCopyWith<_$BrandPromotionsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
