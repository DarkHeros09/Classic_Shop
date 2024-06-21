// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_cart_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShopCartItemDTO _$ShopCartItemDTOFromJson(Map<String, dynamic> json) {
  return _ShopCartItemDTO.fromJson(json);
}

/// @nodoc
mixin _$ShopCartItemDTO {
  int? get id => throw _privateConstructorUsedError;
  int? get shoppingCartId => throw _privateConstructorUsedError;
  int get productItemId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;
  String? get productImage => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopCartItemDTOCopyWith<ShopCartItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopCartItemDTOCopyWith<$Res> {
  factory $ShopCartItemDTOCopyWith(
          ShopCartItemDTO value, $Res Function(ShopCartItemDTO) then) =
      _$ShopCartItemDTOCopyWithImpl<$Res, ShopCartItemDTO>;
  @useResult
  $Res call(
      {int? id,
      int? shoppingCartId,
      int productItemId,
      String? name,
      int qty,
      String? productImage,
      String? price,
      bool? active,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$ShopCartItemDTOCopyWithImpl<$Res, $Val extends ShopCartItemDTO>
    implements $ShopCartItemDTOCopyWith<$Res> {
  _$ShopCartItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? shoppingCartId = freezed,
    Object? productItemId = null,
    Object? name = freezed,
    Object? qty = null,
    Object? productImage = freezed,
    Object? price = freezed,
    Object? active = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      shoppingCartId: freezed == shoppingCartId
          ? _value.shoppingCartId
          : shoppingCartId // ignore: cast_nullable_to_non_nullable
              as int?,
      productItemId: null == productItemId
          ? _value.productItemId
          : productItemId // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      productImage: freezed == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShopCartItemDTOImplCopyWith<$Res>
    implements $ShopCartItemDTOCopyWith<$Res> {
  factory _$$ShopCartItemDTOImplCopyWith(_$ShopCartItemDTOImpl value,
          $Res Function(_$ShopCartItemDTOImpl) then) =
      __$$ShopCartItemDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? shoppingCartId,
      int productItemId,
      String? name,
      int qty,
      String? productImage,
      String? price,
      bool? active,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$ShopCartItemDTOImplCopyWithImpl<$Res>
    extends _$ShopCartItemDTOCopyWithImpl<$Res, _$ShopCartItemDTOImpl>
    implements _$$ShopCartItemDTOImplCopyWith<$Res> {
  __$$ShopCartItemDTOImplCopyWithImpl(
      _$ShopCartItemDTOImpl _value, $Res Function(_$ShopCartItemDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? shoppingCartId = freezed,
    Object? productItemId = null,
    Object? name = freezed,
    Object? qty = null,
    Object? productImage = freezed,
    Object? price = freezed,
    Object? active = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ShopCartItemDTOImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      shoppingCartId: freezed == shoppingCartId
          ? _value.shoppingCartId
          : shoppingCartId // ignore: cast_nullable_to_non_nullable
              as int?,
      productItemId: null == productItemId
          ? _value.productItemId
          : productItemId // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      productImage: freezed == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopCartItemDTOImpl extends _ShopCartItemDTO {
  const _$ShopCartItemDTOImpl(
      {required this.id,
      required this.shoppingCartId,
      required this.productItemId,
      required this.name,
      required this.qty,
      required this.productImage,
      required this.price,
      required this.active,
      required this.createdAt,
      required this.updatedAt})
      : super._();

  factory _$ShopCartItemDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopCartItemDTOImplFromJson(json);

  @override
  final int? id;
  @override
  final int? shoppingCartId;
  @override
  final int productItemId;
  @override
  final String? name;
  @override
  final int qty;
  @override
  final String? productImage;
  @override
  final String? price;
  @override
  final bool? active;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ShopCartItemDTO(id: $id, shoppingCartId: $shoppingCartId, productItemId: $productItemId, name: $name, qty: $qty, productImage: $productImage, price: $price, active: $active, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopCartItemDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.shoppingCartId, shoppingCartId) ||
                other.shoppingCartId == shoppingCartId) &&
            (identical(other.productItemId, productItemId) ||
                other.productItemId == productItemId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.productImage, productImage) ||
                other.productImage == productImage) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      shoppingCartId,
      productItemId,
      name,
      qty,
      productImage,
      price,
      active,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopCartItemDTOImplCopyWith<_$ShopCartItemDTOImpl> get copyWith =>
      __$$ShopCartItemDTOImplCopyWithImpl<_$ShopCartItemDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopCartItemDTOImplToJson(
      this,
    );
  }
}

abstract class _ShopCartItemDTO extends ShopCartItemDTO {
  const factory _ShopCartItemDTO(
      {required final int? id,
      required final int? shoppingCartId,
      required final int productItemId,
      required final String? name,
      required final int qty,
      required final String? productImage,
      required final String? price,
      required final bool? active,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$ShopCartItemDTOImpl;
  const _ShopCartItemDTO._() : super._();

  factory _ShopCartItemDTO.fromJson(Map<String, dynamic> json) =
      _$ShopCartItemDTOImpl.fromJson;

  @override
  int? get id;
  @override
  int? get shoppingCartId;
  @override
  int get productItemId;
  @override
  String? get name;
  @override
  int get qty;
  @override
  String? get productImage;
  @override
  String? get price;
  @override
  bool? get active;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ShopCartItemDTOImplCopyWith<_$ShopCartItemDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
