// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Promotions {
  List<ProductPromotions>? get productPromotions =>
      throw _privateConstructorUsedError;
  List<BrandPromotions>? get brandPromotions =>
      throw _privateConstructorUsedError;
  List<CategoryPromotions>? get categoryPromotions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PromotionsCopyWith<Promotions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionsCopyWith<$Res> {
  factory $PromotionsCopyWith(
          Promotions value, $Res Function(Promotions) then) =
      _$PromotionsCopyWithImpl<$Res, Promotions>;
  @useResult
  $Res call(
      {List<ProductPromotions>? productPromotions,
      List<BrandPromotions>? brandPromotions,
      List<CategoryPromotions>? categoryPromotions});
}

/// @nodoc
class _$PromotionsCopyWithImpl<$Res, $Val extends Promotions>
    implements $PromotionsCopyWith<$Res> {
  _$PromotionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productPromotions = freezed,
    Object? brandPromotions = freezed,
    Object? categoryPromotions = freezed,
  }) {
    return _then(_value.copyWith(
      productPromotions: freezed == productPromotions
          ? _value.productPromotions
          : productPromotions // ignore: cast_nullable_to_non_nullable
              as List<ProductPromotions>?,
      brandPromotions: freezed == brandPromotions
          ? _value.brandPromotions
          : brandPromotions // ignore: cast_nullable_to_non_nullable
              as List<BrandPromotions>?,
      categoryPromotions: freezed == categoryPromotions
          ? _value.categoryPromotions
          : categoryPromotions // ignore: cast_nullable_to_non_nullable
              as List<CategoryPromotions>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotionsImplCopyWith<$Res>
    implements $PromotionsCopyWith<$Res> {
  factory _$$PromotionsImplCopyWith(
          _$PromotionsImpl value, $Res Function(_$PromotionsImpl) then) =
      __$$PromotionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductPromotions>? productPromotions,
      List<BrandPromotions>? brandPromotions,
      List<CategoryPromotions>? categoryPromotions});
}

/// @nodoc
class __$$PromotionsImplCopyWithImpl<$Res>
    extends _$PromotionsCopyWithImpl<$Res, _$PromotionsImpl>
    implements _$$PromotionsImplCopyWith<$Res> {
  __$$PromotionsImplCopyWithImpl(
      _$PromotionsImpl _value, $Res Function(_$PromotionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productPromotions = freezed,
    Object? brandPromotions = freezed,
    Object? categoryPromotions = freezed,
  }) {
    return _then(_$PromotionsImpl(
      productPromotions: freezed == productPromotions
          ? _value._productPromotions
          : productPromotions // ignore: cast_nullable_to_non_nullable
              as List<ProductPromotions>?,
      brandPromotions: freezed == brandPromotions
          ? _value._brandPromotions
          : brandPromotions // ignore: cast_nullable_to_non_nullable
              as List<BrandPromotions>?,
      categoryPromotions: freezed == categoryPromotions
          ? _value._categoryPromotions
          : categoryPromotions // ignore: cast_nullable_to_non_nullable
              as List<CategoryPromotions>?,
    ));
  }
}

/// @nodoc

class _$PromotionsImpl extends _Promotions {
  const _$PromotionsImpl(
      {required final List<ProductPromotions>? productPromotions,
      required final List<BrandPromotions>? brandPromotions,
      required final List<CategoryPromotions>? categoryPromotions})
      : _productPromotions = productPromotions,
        _brandPromotions = brandPromotions,
        _categoryPromotions = categoryPromotions,
        super._();

  final List<ProductPromotions>? _productPromotions;
  @override
  List<ProductPromotions>? get productPromotions {
    final value = _productPromotions;
    if (value == null) return null;
    if (_productPromotions is EqualUnmodifiableListView)
      return _productPromotions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BrandPromotions>? _brandPromotions;
  @override
  List<BrandPromotions>? get brandPromotions {
    final value = _brandPromotions;
    if (value == null) return null;
    if (_brandPromotions is EqualUnmodifiableListView) return _brandPromotions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CategoryPromotions>? _categoryPromotions;
  @override
  List<CategoryPromotions>? get categoryPromotions {
    final value = _categoryPromotions;
    if (value == null) return null;
    if (_categoryPromotions is EqualUnmodifiableListView)
      return _categoryPromotions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Promotions(productPromotions: $productPromotions, brandPromotions: $brandPromotions, categoryPromotions: $categoryPromotions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionsImpl &&
            const DeepCollectionEquality()
                .equals(other._productPromotions, _productPromotions) &&
            const DeepCollectionEquality()
                .equals(other._brandPromotions, _brandPromotions) &&
            const DeepCollectionEquality()
                .equals(other._categoryPromotions, _categoryPromotions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_productPromotions),
      const DeepCollectionEquality().hash(_brandPromotions),
      const DeepCollectionEquality().hash(_categoryPromotions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionsImplCopyWith<_$PromotionsImpl> get copyWith =>
      __$$PromotionsImplCopyWithImpl<_$PromotionsImpl>(this, _$identity);
}

abstract class _Promotions extends Promotions {
  const factory _Promotions(
          {required final List<ProductPromotions>? productPromotions,
          required final List<BrandPromotions>? brandPromotions,
          required final List<CategoryPromotions>? categoryPromotions}) =
      _$PromotionsImpl;
  const _Promotions._() : super._();

  @override
  List<ProductPromotions>? get productPromotions;
  @override
  List<BrandPromotions>? get brandPromotions;
  @override
  List<CategoryPromotions>? get categoryPromotions;
  @override
  @JsonKey(ignore: true)
  _$$PromotionsImplCopyWith<_$PromotionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
