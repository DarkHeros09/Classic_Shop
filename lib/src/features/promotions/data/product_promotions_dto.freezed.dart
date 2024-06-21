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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductPromotionsDTO _$ProductPromotionsDTOFromJson(Map<String, dynamic> json) {
  return _ProductPromotionsDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductPromotionsDTO {
  int? get productId => throw _privateConstructorUsedError;
  int? get promotionId => throw _privateConstructorUsedError;
  String? get productPromotionImage => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;

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
      bool? active,
      DateTime? startDate,
      DateTime? endDate});
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
abstract class _$$ProductPromotionsDTOImplCopyWith<$Res>
    implements $ProductPromotionsDTOCopyWith<$Res> {
  factory _$$ProductPromotionsDTOImplCopyWith(_$ProductPromotionsDTOImpl value,
          $Res Function(_$ProductPromotionsDTOImpl) then) =
      __$$ProductPromotionsDTOImplCopyWithImpl<$Res>;
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
class __$$ProductPromotionsDTOImplCopyWithImpl<$Res>
    extends _$ProductPromotionsDTOCopyWithImpl<$Res, _$ProductPromotionsDTOImpl>
    implements _$$ProductPromotionsDTOImplCopyWith<$Res> {
  __$$ProductPromotionsDTOImplCopyWithImpl(_$ProductPromotionsDTOImpl _value,
      $Res Function(_$ProductPromotionsDTOImpl) _then)
      : super(_value, _then);

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
    return _then(_$ProductPromotionsDTOImpl(
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
@JsonSerializable()
class _$ProductPromotionsDTOImpl extends _ProductPromotionsDTO {
  const _$ProductPromotionsDTOImpl(
      {required this.productId,
      required this.promotionId,
      required this.productPromotionImage,
      required this.active,
      required this.startDate,
      required this.endDate})
      : super._();

  factory _$ProductPromotionsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductPromotionsDTOImplFromJson(json);

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
    return 'ProductPromotionsDTO(productId: $productId, promotionId: $promotionId, productPromotionImage: $productPromotionImage, active: $active, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductPromotionsDTOImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, promotionId,
      productPromotionImage, active, startDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductPromotionsDTOImplCopyWith<_$ProductPromotionsDTOImpl>
      get copyWith =>
          __$$ProductPromotionsDTOImplCopyWithImpl<_$ProductPromotionsDTOImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductPromotionsDTOImplToJson(
      this,
    );
  }
}

abstract class _ProductPromotionsDTO extends ProductPromotionsDTO {
  const factory _ProductPromotionsDTO(
      {required final int? productId,
      required final int? promotionId,
      required final String? productPromotionImage,
      required final bool? active,
      required final DateTime? startDate,
      required final DateTime? endDate}) = _$ProductPromotionsDTOImpl;
  const _ProductPromotionsDTO._() : super._();

  factory _ProductPromotionsDTO.fromJson(Map<String, dynamic> json) =
      _$ProductPromotionsDTOImpl.fromJson;

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
  @override
  @JsonKey(ignore: true)
  _$$ProductPromotionsDTOImplCopyWith<_$ProductPromotionsDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
