// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_promotions_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryPromotionsDTO _$CategoryPromotionsDTOFromJson(
    Map<String, dynamic> json) {
  return _CategoryPromotionsDTO.fromJson(json);
}

/// @nodoc
mixin _$CategoryPromotionsDTO {
  int? get categoryId => throw _privateConstructorUsedError;
  int? get promotionId => throw _privateConstructorUsedError;
  String? get categoryPromotionImage => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryPromotionsDTOCopyWith<CategoryPromotionsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryPromotionsDTOCopyWith<$Res> {
  factory $CategoryPromotionsDTOCopyWith(CategoryPromotionsDTO value,
          $Res Function(CategoryPromotionsDTO) then) =
      _$CategoryPromotionsDTOCopyWithImpl<$Res, CategoryPromotionsDTO>;
  @useResult
  $Res call(
      {int? categoryId,
      int? promotionId,
      String? categoryPromotionImage,
      bool? active});
}

/// @nodoc
class _$CategoryPromotionsDTOCopyWithImpl<$Res,
        $Val extends CategoryPromotionsDTO>
    implements $CategoryPromotionsDTOCopyWith<$Res> {
  _$CategoryPromotionsDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$_CategoryPromotionsDTOCopyWith<$Res>
    implements $CategoryPromotionsDTOCopyWith<$Res> {
  factory _$$_CategoryPromotionsDTOCopyWith(_$_CategoryPromotionsDTO value,
          $Res Function(_$_CategoryPromotionsDTO) then) =
      __$$_CategoryPromotionsDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? categoryId,
      int? promotionId,
      String? categoryPromotionImage,
      bool? active});
}

/// @nodoc
class __$$_CategoryPromotionsDTOCopyWithImpl<$Res>
    extends _$CategoryPromotionsDTOCopyWithImpl<$Res, _$_CategoryPromotionsDTO>
    implements _$$_CategoryPromotionsDTOCopyWith<$Res> {
  __$$_CategoryPromotionsDTOCopyWithImpl(_$_CategoryPromotionsDTO _value,
      $Res Function(_$_CategoryPromotionsDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? promotionId = freezed,
    Object? categoryPromotionImage = freezed,
    Object? active = freezed,
  }) {
    return _then(_$_CategoryPromotionsDTO(
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
@JsonSerializable()
class _$_CategoryPromotionsDTO extends _CategoryPromotionsDTO {
  const _$_CategoryPromotionsDTO(
      {required this.categoryId,
      required this.promotionId,
      required this.categoryPromotionImage,
      required this.active})
      : super._();

  factory _$_CategoryPromotionsDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryPromotionsDTOFromJson(json);

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
    return 'CategoryPromotionsDTO(categoryId: $categoryId, promotionId: $promotionId, categoryPromotionImage: $categoryPromotionImage, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryPromotionsDTO &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.promotionId, promotionId) ||
                other.promotionId == promotionId) &&
            (identical(other.categoryPromotionImage, categoryPromotionImage) ||
                other.categoryPromotionImage == categoryPromotionImage) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, categoryId, promotionId, categoryPromotionImage, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryPromotionsDTOCopyWith<_$_CategoryPromotionsDTO> get copyWith =>
      __$$_CategoryPromotionsDTOCopyWithImpl<_$_CategoryPromotionsDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryPromotionsDTOToJson(
      this,
    );
  }
}

abstract class _CategoryPromotionsDTO extends CategoryPromotionsDTO {
  const factory _CategoryPromotionsDTO(
      {required final int? categoryId,
      required final int? promotionId,
      required final String? categoryPromotionImage,
      required final bool? active}) = _$_CategoryPromotionsDTO;
  const _CategoryPromotionsDTO._() : super._();

  factory _CategoryPromotionsDTO.fromJson(Map<String, dynamic> json) =
      _$_CategoryPromotionsDTO.fromJson;

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
  _$$_CategoryPromotionsDTOCopyWith<_$_CategoryPromotionsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
