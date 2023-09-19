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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryPromotions {
  int? get categoryId => throw _privateConstructorUsedError;
  int? get promotionId => throw _privateConstructorUsedError;
  String? get categoryPromotionImage => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
      bool? active});
}

/// @nodoc
class _$CategoryPromotionsCopyWithImpl<$Res, $Val extends CategoryPromotions>
    implements $CategoryPromotionsCopyWith<$Res> {
  _$CategoryPromotionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? promotionId = freezed,
    Object? categoryPromotionImage = freezed,
    Object? active = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryPromotionsCopyWith<$Res>
    implements $CategoryPromotionsCopyWith<$Res> {
  factory _$$_CategoryPromotionsCopyWith(_$_CategoryPromotions value,
          $Res Function(_$_CategoryPromotions) then) =
      __$$_CategoryPromotionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? categoryId,
      int? promotionId,
      String? categoryPromotionImage,
      bool? active});
}

/// @nodoc
class __$$_CategoryPromotionsCopyWithImpl<$Res>
    extends _$CategoryPromotionsCopyWithImpl<$Res, _$_CategoryPromotions>
    implements _$$_CategoryPromotionsCopyWith<$Res> {
  __$$_CategoryPromotionsCopyWithImpl(
      _$_CategoryPromotions _value, $Res Function(_$_CategoryPromotions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? promotionId = freezed,
    Object? categoryPromotionImage = freezed,
    Object? active = freezed,
  }) {
    return _then(_$_CategoryPromotions(
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
    ));
  }
}

/// @nodoc

class _$_CategoryPromotions implements _CategoryPromotions {
  const _$_CategoryPromotions(
      {required this.categoryId,
      required this.promotionId,
      required this.categoryPromotionImage,
      required this.active});

  @override
  final int? categoryId;
  @override
  final int? promotionId;
  @override
  final String? categoryPromotionImage;
  @override
  final bool? active;

  @override
  String toString() {
    return 'CategoryPromotions(categoryId: $categoryId, promotionId: $promotionId, categoryPromotionImage: $categoryPromotionImage, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryPromotions &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.promotionId, promotionId) ||
                other.promotionId == promotionId) &&
            (identical(other.categoryPromotionImage, categoryPromotionImage) ||
                other.categoryPromotionImage == categoryPromotionImage) &&
            (identical(other.active, active) || other.active == active));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, categoryId, promotionId, categoryPromotionImage, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryPromotionsCopyWith<_$_CategoryPromotions> get copyWith =>
      __$$_CategoryPromotionsCopyWithImpl<_$_CategoryPromotions>(
          this, _$identity);
}

abstract class _CategoryPromotions implements CategoryPromotions {
  const factory _CategoryPromotions(
      {required final int? categoryId,
      required final int? promotionId,
      required final String? categoryPromotionImage,
      required final bool? active}) = _$_CategoryPromotions;

  @override
  int? get categoryId;
  @override
  int? get promotionId;
  @override
  String? get categoryPromotionImage;
  @override
  bool? get active;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryPromotionsCopyWith<_$_CategoryPromotions> get copyWith =>
      throw _privateConstructorUsedError;
}
