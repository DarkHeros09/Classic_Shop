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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductPromotions {
  int? get productId => throw _privateConstructorUsedError;
  int? get promotionId => throw _privateConstructorUsedError;
  String? get productPromotionImage => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
      bool? active});
}

/// @nodoc
class _$ProductPromotionsCopyWithImpl<$Res, $Val extends ProductPromotions>
    implements $ProductPromotionsCopyWith<$Res> {
  _$ProductPromotionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? promotionId = freezed,
    Object? productPromotionImage = freezed,
    Object? active = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductPromotionsCopyWith<$Res>
    implements $ProductPromotionsCopyWith<$Res> {
  factory _$$_ProductPromotionsCopyWith(_$_ProductPromotions value,
          $Res Function(_$_ProductPromotions) then) =
      __$$_ProductPromotionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? productId,
      int? promotionId,
      String? productPromotionImage,
      bool? active});
}

/// @nodoc
class __$$_ProductPromotionsCopyWithImpl<$Res>
    extends _$ProductPromotionsCopyWithImpl<$Res, _$_ProductPromotions>
    implements _$$_ProductPromotionsCopyWith<$Res> {
  __$$_ProductPromotionsCopyWithImpl(
      _$_ProductPromotions _value, $Res Function(_$_ProductPromotions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? promotionId = freezed,
    Object? productPromotionImage = freezed,
    Object? active = freezed,
  }) {
    return _then(_$_ProductPromotions(
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
    ));
  }
}

/// @nodoc

class _$_ProductPromotions implements _ProductPromotions {
  const _$_ProductPromotions(
      {required this.productId,
      required this.promotionId,
      required this.productPromotionImage,
      required this.active});

  @override
  final int? productId;
  @override
  final int? promotionId;
  @override
  final String? productPromotionImage;
  @override
  final bool? active;

  @override
  String toString() {
    return 'ProductPromotions(productId: $productId, promotionId: $promotionId, productPromotionImage: $productPromotionImage, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductPromotions &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.promotionId, promotionId) ||
                other.promotionId == promotionId) &&
            (identical(other.productPromotionImage, productPromotionImage) ||
                other.productPromotionImage == productPromotionImage) &&
            (identical(other.active, active) || other.active == active));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, productId, promotionId, productPromotionImage, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductPromotionsCopyWith<_$_ProductPromotions> get copyWith =>
      __$$_ProductPromotionsCopyWithImpl<_$_ProductPromotions>(
          this, _$identity);
}

abstract class _ProductPromotions implements ProductPromotions {
  const factory _ProductPromotions(
      {required final int? productId,
      required final int? promotionId,
      required final String? productPromotionImage,
      required final bool? active}) = _$_ProductPromotions;

  @override
  int? get productId;
  @override
  int? get promotionId;
  @override
  String? get productPromotionImage;
  @override
  bool? get active;
  @override
  @JsonKey(ignore: true)
  _$$_ProductPromotionsCopyWith<_$_ProductPromotions> get copyWith =>
      throw _privateConstructorUsedError;
}
