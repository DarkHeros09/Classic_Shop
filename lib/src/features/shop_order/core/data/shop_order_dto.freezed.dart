// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_order_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShopOrderDTO _$ShopOrderDTOFromJson(Map<String, dynamic> json) {
  return _ShopOrderDTO.fromJson(json);
}

/// @nodoc
mixin _$ShopOrderDTO {
  int get id => throw _privateConstructorUsedError;
  int? get orderNumber => throw _privateConstructorUsedError;
  String get trackNumber => throw _privateConstructorUsedError;
  int get userId =>
      throw _privateConstructorUsedError; // required final int paymentMethodId,
  int get shippingAddressId => throw _privateConstructorUsedError;
  String get orderTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_method_id')
  int get deliveryMethodId => throw _privateConstructorUsedError;
  int get orderStatusId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get itemCount => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ShopOrderDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShopOrderDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShopOrderDTOCopyWith<ShopOrderDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopOrderDTOCopyWith<$Res> {
  factory $ShopOrderDTOCopyWith(
          ShopOrderDTO value, $Res Function(ShopOrderDTO) then) =
      _$ShopOrderDTOCopyWithImpl<$Res, ShopOrderDTO>;
  @useResult
  $Res call(
      {int id,
      int? orderNumber,
      String trackNumber,
      int userId,
      int shippingAddressId,
      String orderTotal,
      @JsonKey(name: 'shipping_method_id') int deliveryMethodId,
      int orderStatusId,
      String status,
      int itemCount,
      DateTime createdAt});
}

/// @nodoc
class _$ShopOrderDTOCopyWithImpl<$Res, $Val extends ShopOrderDTO>
    implements $ShopOrderDTOCopyWith<$Res> {
  _$ShopOrderDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShopOrderDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderNumber = freezed,
    Object? trackNumber = null,
    Object? userId = null,
    Object? shippingAddressId = null,
    Object? orderTotal = null,
    Object? deliveryMethodId = null,
    Object? orderStatusId = null,
    Object? status = null,
    Object? itemCount = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      trackNumber: null == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      shippingAddressId: null == shippingAddressId
          ? _value.shippingAddressId
          : shippingAddressId // ignore: cast_nullable_to_non_nullable
              as int,
      orderTotal: null == orderTotal
          ? _value.orderTotal
          : orderTotal // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryMethodId: null == deliveryMethodId
          ? _value.deliveryMethodId
          : deliveryMethodId // ignore: cast_nullable_to_non_nullable
              as int,
      orderStatusId: null == orderStatusId
          ? _value.orderStatusId
          : orderStatusId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      itemCount: null == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShopOrderDTOImplCopyWith<$Res>
    implements $ShopOrderDTOCopyWith<$Res> {
  factory _$$ShopOrderDTOImplCopyWith(
          _$ShopOrderDTOImpl value, $Res Function(_$ShopOrderDTOImpl) then) =
      __$$ShopOrderDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int? orderNumber,
      String trackNumber,
      int userId,
      int shippingAddressId,
      String orderTotal,
      @JsonKey(name: 'shipping_method_id') int deliveryMethodId,
      int orderStatusId,
      String status,
      int itemCount,
      DateTime createdAt});
}

/// @nodoc
class __$$ShopOrderDTOImplCopyWithImpl<$Res>
    extends _$ShopOrderDTOCopyWithImpl<$Res, _$ShopOrderDTOImpl>
    implements _$$ShopOrderDTOImplCopyWith<$Res> {
  __$$ShopOrderDTOImplCopyWithImpl(
      _$ShopOrderDTOImpl _value, $Res Function(_$ShopOrderDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShopOrderDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderNumber = freezed,
    Object? trackNumber = null,
    Object? userId = null,
    Object? shippingAddressId = null,
    Object? orderTotal = null,
    Object? deliveryMethodId = null,
    Object? orderStatusId = null,
    Object? status = null,
    Object? itemCount = null,
    Object? createdAt = null,
  }) {
    return _then(_$ShopOrderDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      trackNumber: null == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      shippingAddressId: null == shippingAddressId
          ? _value.shippingAddressId
          : shippingAddressId // ignore: cast_nullable_to_non_nullable
              as int,
      orderTotal: null == orderTotal
          ? _value.orderTotal
          : orderTotal // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryMethodId: null == deliveryMethodId
          ? _value.deliveryMethodId
          : deliveryMethodId // ignore: cast_nullable_to_non_nullable
              as int,
      orderStatusId: null == orderStatusId
          ? _value.orderStatusId
          : orderStatusId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      itemCount: null == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopOrderDTOImpl extends _ShopOrderDTO {
  const _$ShopOrderDTOImpl(
      {required this.id,
      required this.orderNumber,
      required this.trackNumber,
      required this.userId,
      required this.shippingAddressId,
      required this.orderTotal,
      @JsonKey(name: 'shipping_method_id') required this.deliveryMethodId,
      required this.orderStatusId,
      required this.status,
      required this.itemCount,
      required this.createdAt})
      : super._();

  factory _$ShopOrderDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopOrderDTOImplFromJson(json);

  @override
  final int id;
  @override
  final int? orderNumber;
  @override
  final String trackNumber;
  @override
  final int userId;
// required final int paymentMethodId,
  @override
  final int shippingAddressId;
  @override
  final String orderTotal;
  @override
  @JsonKey(name: 'shipping_method_id')
  final int deliveryMethodId;
  @override
  final int orderStatusId;
  @override
  final String status;
  @override
  final int itemCount;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'ShopOrderDTO(id: $id, orderNumber: $orderNumber, trackNumber: $trackNumber, userId: $userId, shippingAddressId: $shippingAddressId, orderTotal: $orderTotal, deliveryMethodId: $deliveryMethodId, orderStatusId: $orderStatusId, status: $status, itemCount: $itemCount, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopOrderDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.trackNumber, trackNumber) ||
                other.trackNumber == trackNumber) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.shippingAddressId, shippingAddressId) ||
                other.shippingAddressId == shippingAddressId) &&
            (identical(other.orderTotal, orderTotal) ||
                other.orderTotal == orderTotal) &&
            (identical(other.deliveryMethodId, deliveryMethodId) ||
                other.deliveryMethodId == deliveryMethodId) &&
            (identical(other.orderStatusId, orderStatusId) ||
                other.orderStatusId == orderStatusId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.itemCount, itemCount) ||
                other.itemCount == itemCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      orderNumber,
      trackNumber,
      userId,
      shippingAddressId,
      orderTotal,
      deliveryMethodId,
      orderStatusId,
      status,
      itemCount,
      createdAt);

  /// Create a copy of ShopOrderDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopOrderDTOImplCopyWith<_$ShopOrderDTOImpl> get copyWith =>
      __$$ShopOrderDTOImplCopyWithImpl<_$ShopOrderDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopOrderDTOImplToJson(
      this,
    );
  }
}

abstract class _ShopOrderDTO extends ShopOrderDTO {
  const factory _ShopOrderDTO(
      {required final int id,
      required final int? orderNumber,
      required final String trackNumber,
      required final int userId,
      required final int shippingAddressId,
      required final String orderTotal,
      @JsonKey(name: 'shipping_method_id') required final int deliveryMethodId,
      required final int orderStatusId,
      required final String status,
      required final int itemCount,
      required final DateTime createdAt}) = _$ShopOrderDTOImpl;
  const _ShopOrderDTO._() : super._();

  factory _ShopOrderDTO.fromJson(Map<String, dynamic> json) =
      _$ShopOrderDTOImpl.fromJson;

  @override
  int get id;
  @override
  int? get orderNumber;
  @override
  String get trackNumber;
  @override
  int get userId; // required final int paymentMethodId,
  @override
  int get shippingAddressId;
  @override
  String get orderTotal;
  @override
  @JsonKey(name: 'shipping_method_id')
  int get deliveryMethodId;
  @override
  int get orderStatusId;
  @override
  String get status;
  @override
  int get itemCount;
  @override
  DateTime get createdAt;

  /// Create a copy of ShopOrderDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShopOrderDTOImplCopyWith<_$ShopOrderDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
