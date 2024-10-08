// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_promotions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryPromotions {
  int? get categoryId => throw _privateConstructorUsedError;
  int? get promotionId => throw _privateConstructorUsedError;
  String? get categoryPromotionImage => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;

  /// Create a copy of CategoryPromotions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryPromotionsCopyWith<CategoryPromotions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryPromotionsCopyWith<$Res> {
  factory $CategoryPromotionsCopyWith(
          CategoryPromotions value, $Res Function(CategoryPromotions) then) =
      _$CategoryPromotionsCopyWithImpl<$Res, CategoryPromotions>;
  @useResult
  $Res call(
      {int? categoryId,
      int? promotionId,
      String? categoryPromotionImage,
      bool? active,
      DateTime? startDate,
      DateTime? endDate});
}

/// @nodoc
class _$CategoryPromotionsCopyWithImpl<$Res, $Val extends CategoryPromotions>
    implements $CategoryPromotionsCopyWith<$Res> {
  _$CategoryPromotionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryPromotions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? promotionId = freezed,
    Object? categoryPromotionImage = freezed,
    Object? active = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      promotionId: freezed == promotionId
          ? _value.promotionId
          : promotionId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryPromotionImage: freezed == categoryPromotionImage
          ? _value.categoryPromotionImage
          : categoryPromotionImage // ignore: cast_nullable_to_non_nullable
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
abstract class _$$CategoryPromotionsImplCopyWith<$Res>
    implements $CategoryPromotionsCopyWith<$Res> {
  factory _$$CategoryPromotionsImplCopyWith(_$CategoryPromotionsImpl value,
          $Res Function(_$CategoryPromotionsImpl) then) =
      __$$CategoryPromotionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? categoryId,
      int? promotionId,
      String? categoryPromotionImage,
      bool? active,
      DateTime? startDate,
      DateTime? endDate});
}

/// @nodoc
class __$$CategoryPromotionsImplCopyWithImpl<$Res>
    extends _$CategoryPromotionsCopyWithImpl<$Res, _$CategoryPromotionsImpl>
    implements _$$CategoryPromotionsImplCopyWith<$Res> {
  __$$CategoryPromotionsImplCopyWithImpl(_$CategoryPromotionsImpl _value,
      $Res Function(_$CategoryPromotionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryPromotions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? promotionId = freezed,
    Object? categoryPromotionImage = freezed,
    Object? active = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$CategoryPromotionsImpl(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      promotionId: freezed == promotionId
          ? _value.promotionId
          : promotionId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryPromotionImage: freezed == categoryPromotionImage
          ? _value.categoryPromotionImage
          : categoryPromotionImage // ignore: cast_nullable_to_non_nullable
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

class _$CategoryPromotionsImpl extends _CategoryPromotions {
  const _$CategoryPromotionsImpl(
      {required this.categoryId,
      required this.promotionId,
      required this.categoryPromotionImage,
      required this.active,
      required this.startDate,
      required this.endDate})
      : super._();

  @override
  final int? categoryId;
  @override
  final int? promotionId;
  @override
  final String? categoryPromotionImage;
  @override
  final bool? active;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;

  @override
  String toString() {
    return 'CategoryPromotions(categoryId: $categoryId, promotionId: $promotionId, categoryPromotionImage: $categoryPromotionImage, active: $active, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryPromotionsImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.promotionId, promotionId) ||
                other.promotionId == promotionId) &&
            (identical(other.categoryPromotionImage, categoryPromotionImage) ||
                other.categoryPromotionImage == categoryPromotionImage) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId, promotionId,
      categoryPromotionImage, active, startDate, endDate);

  /// Create a copy of CategoryPromotions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryPromotionsImplCopyWith<_$CategoryPromotionsImpl> get copyWith =>
      __$$CategoryPromotionsImplCopyWithImpl<_$CategoryPromotionsImpl>(
          this, _$identity);
}

abstract class _CategoryPromotions extends CategoryPromotions {
  const factory _CategoryPromotions(
      {required final int? categoryId,
      required final int? promotionId,
      required final String? categoryPromotionImage,
      required final bool? active,
      required final DateTime? startDate,
      required final DateTime? endDate}) = _$CategoryPromotionsImpl;
  const _CategoryPromotions._() : super._();

  @override
  int? get categoryId;
  @override
  int? get promotionId;
  @override
  String? get categoryPromotionImage;
  @override
  bool? get active;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;

  /// Create a copy of CategoryPromotions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryPromotionsImplCopyWith<_$CategoryPromotionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
