// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_promotions_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductPromotionsDTO _$ProductPromotionsDTOFromJson(Map<String, dynamic> json) {
  return _ProductPromotionsDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductPromotionsDTO {
  int? get productId => throw _privateConstructorUsedError;
  int? get promotionId => throw _privateConstructorUsedError;
  String? get productPromotionImage => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductPromotionsDTOCopyWith<ProductPromotionsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPromotionsDTOCopyWith<$Res> {
  factory $ProductPromotionsDTOCopyWith(ProductPromotionsDTO value,
          $Res Function(ProductPromotionsDTO) then) =
      _$ProductPromotionsDTOCopyWithImpl<$Res, ProductPromotionsDTO>;
  @useResult
  $Res call(
      {int? productId,
      int? promotionId,
      String? productPromotionImage,
      bool? active});
}

/// @nodoc
class _$ProductPromotionsDTOCopyWithImpl<$Res,
        $Val extends ProductPromotionsDTO>
    implements $ProductPromotionsDTOCopyWith<$Res> {
  _$ProductPromotionsDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$_ProductPromotionsDTOCopyWith<$Res>
    implements $ProductPromotionsDTOCopyWith<$Res> {
  factory _$$_ProductPromotionsDTOCopyWith(_$_ProductPromotionsDTO value,
          $Res Function(_$_ProductPromotionsDTO) then) =
      __$$_ProductPromotionsDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? productId,
      int? promotionId,
      String? productPromotionImage,
      bool? active});
}

/// @nodoc
class __$$_ProductPromotionsDTOCopyWithImpl<$Res>
    extends _$ProductPromotionsDTOCopyWithImpl<$Res, _$_ProductPromotionsDTO>
    implements _$$_ProductPromotionsDTOCopyWith<$Res> {
  __$$_ProductPromotionsDTOCopyWithImpl(_$_ProductPromotionsDTO _value,
      $Res Function(_$_ProductPromotionsDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? promotionId = freezed,
    Object? productPromotionImage = freezed,
    Object? active = freezed,
  }) {
    return _then(_$_ProductPromotionsDTO(
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
@JsonSerializable()
class _$_ProductPromotionsDTO extends _ProductPromotionsDTO {
  const _$_ProductPromotionsDTO(
      {required this.productId,
      required this.promotionId,
      required this.productPromotionImage,
      required this.active})
      : super._();

  factory _$_ProductPromotionsDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ProductPromotionsDTOFromJson(json);

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
    return 'ProductPromotionsDTO(productId: $productId, promotionId: $promotionId, productPromotionImage: $productPromotionImage, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductPromotionsDTO &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.promotionId, promotionId) ||
                other.promotionId == promotionId) &&
            (identical(other.productPromotionImage, productPromotionImage) ||
                other.productPromotionImage == productPromotionImage) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, productId, promotionId, productPromotionImage, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductPromotionsDTOCopyWith<_$_ProductPromotionsDTO> get copyWith =>
      __$$_ProductPromotionsDTOCopyWithImpl<_$_ProductPromotionsDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductPromotionsDTOToJson(
      this,
    );
  }
}

abstract class _ProductPromotionsDTO extends ProductPromotionsDTO {
  const factory _ProductPromotionsDTO(
      {required final int? productId,
      required final int? promotionId,
      required final String? productPromotionImage,
      required final bool? active}) = _$_ProductPromotionsDTO;
  const _ProductPromotionsDTO._() : super._();

  factory _ProductPromotionsDTO.fromJson(Map<String, dynamic> json) =
      _$_ProductPromotionsDTO.fromJson;

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
  _$$_ProductPromotionsDTOCopyWith<_$_ProductPromotionsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
