// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_promotions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BrandPromotions {
  int? get brandId => throw _privateConstructorUsedError;
  int? get promotionId => throw _privateConstructorUsedError;
  String? get brandPromotionImage => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BrandPromotionsCopyWith<BrandPromotions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandPromotionsCopyWith<$Res> {
  factory $BrandPromotionsCopyWith(
          BrandPromotions value, $Res Function(BrandPromotions) then) =
      _$BrandPromotionsCopyWithImpl<$Res, BrandPromotions>;
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
class _$BrandPromotionsCopyWithImpl<$Res, $Val extends BrandPromotions>
    implements $BrandPromotionsCopyWith<$Res> {
  _$BrandPromotionsCopyWithImpl(this._value, this._then);

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
abstract class _$$BrandPromotionsImplCopyWith<$Res>
    implements $BrandPromotionsCopyWith<$Res> {
  factory _$$BrandPromotionsImplCopyWith(_$BrandPromotionsImpl value,
          $Res Function(_$BrandPromotionsImpl) then) =
      __$$BrandPromotionsImplCopyWithImpl<$Res>;
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
class __$$BrandPromotionsImplCopyWithImpl<$Res>
    extends _$BrandPromotionsCopyWithImpl<$Res, _$BrandPromotionsImpl>
    implements _$$BrandPromotionsImplCopyWith<$Res> {
  __$$BrandPromotionsImplCopyWithImpl(
      _$BrandPromotionsImpl _value, $Res Function(_$BrandPromotionsImpl) _then)
      : super(_value, _then);

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
    return _then(_$BrandPromotionsImpl(
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

class _$BrandPromotionsImpl extends _BrandPromotions {
  const _$BrandPromotionsImpl(
      {required this.brandId,
      required this.promotionId,
      required this.brandPromotionImage,
      required this.active,
      required this.startDate,
      required this.endDate})
      : super._();

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
    return 'BrandPromotions(brandId: $brandId, promotionId: $promotionId, brandPromotionImage: $brandPromotionImage, active: $active, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandPromotionsImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, brandId, promotionId,
      brandPromotionImage, active, startDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandPromotionsImplCopyWith<_$BrandPromotionsImpl> get copyWith =>
      __$$BrandPromotionsImplCopyWithImpl<_$BrandPromotionsImpl>(
          this, _$identity);
}

abstract class _BrandPromotions extends BrandPromotions {
  const factory _BrandPromotions(
      {required final int? brandId,
      required final int? promotionId,
      required final String? brandPromotionImage,
      required final bool? active,
      required final DateTime? startDate,
      required final DateTime? endDate}) = _$BrandPromotionsImpl;
  const _BrandPromotions._() : super._();

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
  @override
  @JsonKey(ignore: true)
  _$$BrandPromotionsImplCopyWith<_$BrandPromotionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
