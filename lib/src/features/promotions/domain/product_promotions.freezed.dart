// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_promotions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductPromotions {
  int? get productId => throw _privateConstructorUsedError;
  int? get promotionId => throw _privateConstructorUsedError;
  String? get productPromotionImage => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;

  /// Create a copy of ProductPromotions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductPromotionsCopyWith<ProductPromotions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPromotionsCopyWith<$Res> {
  factory $ProductPromotionsCopyWith(
          ProductPromotions value, $Res Function(ProductPromotions) then) =
      _$ProductPromotionsCopyWithImpl<$Res, ProductPromotions>;
  @useResult
  $Res call(
      {int? productId,
      int? promotionId,
      String? productPromotionImage,
      bool? active,
      DateTime? startDate,
      DateTime? endDate});
}

/// @nodoc
class _$ProductPromotionsCopyWithImpl<$Res, $Val extends ProductPromotions>
    implements $ProductPromotionsCopyWith<$Res> {
  _$ProductPromotionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductPromotions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? promotionId = freezed,
    Object? productPromotionImage = freezed,
    Object? active = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      promotionId: freezed == promotionId
          ? _value.promotionId
          : promotionId // ignore: cast_nullable_to_non_nullable
              as int?,
      productPromotionImage: freezed == productPromotionImage
          ? _value.productPromotionImage
          : productPromotionImage // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ProductPromotionsImplCopyWith<$Res>
    implements $ProductPromotionsCopyWith<$Res> {
  factory _$$ProductPromotionsImplCopyWith(_$ProductPromotionsImpl value,
          $Res Function(_$ProductPromotionsImpl) then) =
      __$$ProductPromotionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? productId,
      int? promotionId,
      String? productPromotionImage,
      bool? active,
      DateTime? startDate,
      DateTime? endDate});
}

/// @nodoc
class __$$ProductPromotionsImplCopyWithImpl<$Res>
    extends _$ProductPromotionsCopyWithImpl<$Res, _$ProductPromotionsImpl>
    implements _$$ProductPromotionsImplCopyWith<$Res> {
  __$$ProductPromotionsImplCopyWithImpl(_$ProductPromotionsImpl _value,
      $Res Function(_$ProductPromotionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductPromotions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? promotionId = freezed,
    Object? productPromotionImage = freezed,
    Object? active = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$ProductPromotionsImpl(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      promotionId: freezed == promotionId
          ? _value.promotionId
          : promotionId // ignore: cast_nullable_to_non_nullable
              as int?,
      productPromotionImage: freezed == productPromotionImage
          ? _value.productPromotionImage
          : productPromotionImage // ignore: cast_nullable_to_non_nullable
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

class _$ProductPromotionsImpl extends _ProductPromotions {
  const _$ProductPromotionsImpl(
      {required this.productId,
      required this.promotionId,
      required this.productPromotionImage,
      required this.active,
      required this.startDate,
      required this.endDate})
      : super._();

  @override
  final int? productId;
  @override
  final int? promotionId;
  @override
  final String? productPromotionImage;
  @override
  final bool? active;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;

  @override
  String toString() {
    return 'ProductPromotions(productId: $productId, promotionId: $promotionId, productPromotionImage: $productPromotionImage, active: $active, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductPromotionsImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.promotionId, promotionId) ||
                other.promotionId == promotionId) &&
            (identical(other.productPromotionImage, productPromotionImage) ||
                other.productPromotionImage == productPromotionImage) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId, promotionId,
      productPromotionImage, active, startDate, endDate);

  /// Create a copy of ProductPromotions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductPromotionsImplCopyWith<_$ProductPromotionsImpl> get copyWith =>
      __$$ProductPromotionsImplCopyWithImpl<_$ProductPromotionsImpl>(
          this, _$identity);
}

abstract class _ProductPromotions extends ProductPromotions {
  const factory _ProductPromotions(
      {required final int? productId,
      required final int? promotionId,
      required final String? productPromotionImage,
      required final bool? active,
      required final DateTime? startDate,
      required final DateTime? endDate}) = _$ProductPromotionsImpl;
  const _ProductPromotions._() : super._();

  @override
  int? get productId;
  @override
  int? get promotionId;
  @override
  String? get productPromotionImage;
  @override
  bool? get active;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;

  /// Create a copy of ProductPromotions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductPromotionsImplCopyWith<_$ProductPromotionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
