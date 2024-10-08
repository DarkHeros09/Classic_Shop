// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotions_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PromotionsDTO {
  List<ProductPromotionsDTO>? get productPromotions =>
      throw _privateConstructorUsedError;
  List<BrandPromotionsDTO>? get brandPromotions =>
      throw _privateConstructorUsedError;
  List<CategoryPromotionsDTO>? get categoryPromotions =>
      throw _privateConstructorUsedError;

  /// Create a copy of PromotionsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PromotionsDTOCopyWith<PromotionsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionsDTOCopyWith<$Res> {
  factory $PromotionsDTOCopyWith(
          PromotionsDTO value, $Res Function(PromotionsDTO) then) =
      _$PromotionsDTOCopyWithImpl<$Res, PromotionsDTO>;
  @useResult
  $Res call(
      {List<ProductPromotionsDTO>? productPromotions,
      List<BrandPromotionsDTO>? brandPromotions,
      List<CategoryPromotionsDTO>? categoryPromotions});
}

/// @nodoc
class _$PromotionsDTOCopyWithImpl<$Res, $Val extends PromotionsDTO>
    implements $PromotionsDTOCopyWith<$Res> {
  _$PromotionsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PromotionsDTO
  /// with the given fields replaced by the non-null parameter values.
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
              as List<ProductPromotionsDTO>?,
      brandPromotions: freezed == brandPromotions
          ? _value.brandPromotions
          : brandPromotions // ignore: cast_nullable_to_non_nullable
              as List<BrandPromotionsDTO>?,
      categoryPromotions: freezed == categoryPromotions
          ? _value.categoryPromotions
          : categoryPromotions // ignore: cast_nullable_to_non_nullable
              as List<CategoryPromotionsDTO>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotionsDTOImplCopyWith<$Res>
    implements $PromotionsDTOCopyWith<$Res> {
  factory _$$PromotionsDTOImplCopyWith(
          _$PromotionsDTOImpl value, $Res Function(_$PromotionsDTOImpl) then) =
      __$$PromotionsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductPromotionsDTO>? productPromotions,
      List<BrandPromotionsDTO>? brandPromotions,
      List<CategoryPromotionsDTO>? categoryPromotions});
}

/// @nodoc
class __$$PromotionsDTOImplCopyWithImpl<$Res>
    extends _$PromotionsDTOCopyWithImpl<$Res, _$PromotionsDTOImpl>
    implements _$$PromotionsDTOImplCopyWith<$Res> {
  __$$PromotionsDTOImplCopyWithImpl(
      _$PromotionsDTOImpl _value, $Res Function(_$PromotionsDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of PromotionsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productPromotions = freezed,
    Object? brandPromotions = freezed,
    Object? categoryPromotions = freezed,
  }) {
    return _then(_$PromotionsDTOImpl(
      productPromotions: freezed == productPromotions
          ? _value._productPromotions
          : productPromotions // ignore: cast_nullable_to_non_nullable
              as List<ProductPromotionsDTO>?,
      brandPromotions: freezed == brandPromotions
          ? _value._brandPromotions
          : brandPromotions // ignore: cast_nullable_to_non_nullable
              as List<BrandPromotionsDTO>?,
      categoryPromotions: freezed == categoryPromotions
          ? _value._categoryPromotions
          : categoryPromotions // ignore: cast_nullable_to_non_nullable
              as List<CategoryPromotionsDTO>?,
    ));
  }
}

/// @nodoc

class _$PromotionsDTOImpl extends _PromotionsDTO {
  const _$PromotionsDTOImpl(
      {required final List<ProductPromotionsDTO>? productPromotions,
      required final List<BrandPromotionsDTO>? brandPromotions,
      required final List<CategoryPromotionsDTO>? categoryPromotions})
      : _productPromotions = productPromotions,
        _brandPromotions = brandPromotions,
        _categoryPromotions = categoryPromotions,
        super._();

  final List<ProductPromotionsDTO>? _productPromotions;
  @override
  List<ProductPromotionsDTO>? get productPromotions {
    final value = _productPromotions;
    if (value == null) return null;
    if (_productPromotions is EqualUnmodifiableListView)
      return _productPromotions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BrandPromotionsDTO>? _brandPromotions;
  @override
  List<BrandPromotionsDTO>? get brandPromotions {
    final value = _brandPromotions;
    if (value == null) return null;
    if (_brandPromotions is EqualUnmodifiableListView) return _brandPromotions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CategoryPromotionsDTO>? _categoryPromotions;
  @override
  List<CategoryPromotionsDTO>? get categoryPromotions {
    final value = _categoryPromotions;
    if (value == null) return null;
    if (_categoryPromotions is EqualUnmodifiableListView)
      return _categoryPromotions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PromotionsDTO(productPromotions: $productPromotions, brandPromotions: $brandPromotions, categoryPromotions: $categoryPromotions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionsDTOImpl &&
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

  /// Create a copy of PromotionsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionsDTOImplCopyWith<_$PromotionsDTOImpl> get copyWith =>
      __$$PromotionsDTOImplCopyWithImpl<_$PromotionsDTOImpl>(this, _$identity);
}

abstract class _PromotionsDTO extends PromotionsDTO {
  const factory _PromotionsDTO(
          {required final List<ProductPromotionsDTO>? productPromotions,
          required final List<BrandPromotionsDTO>? brandPromotions,
          required final List<CategoryPromotionsDTO>? categoryPromotions}) =
      _$PromotionsDTOImpl;
  const _PromotionsDTO._() : super._();

  @override
  List<ProductPromotionsDTO>? get productPromotions;
  @override
  List<BrandPromotionsDTO>? get brandPromotions;
  @override
  List<CategoryPromotionsDTO>? get categoryPromotions;

  /// Create a copy of PromotionsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PromotionsDTOImplCopyWith<_$PromotionsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
