// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeliveryMethod {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeliveryMethodCopyWith<DeliveryMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryMethodCopyWith<$Res> {
  factory $DeliveryMethodCopyWith(
          DeliveryMethod value, $Res Function(DeliveryMethod) then) =
      _$DeliveryMethodCopyWithImpl<$Res, DeliveryMethod>;
  @useResult
  $Res call({int id, String name, String price});
}

/// @nodoc
class _$DeliveryMethodCopyWithImpl<$Res, $Val extends DeliveryMethod>
    implements $DeliveryMethodCopyWith<$Res> {
  _$DeliveryMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryMethodImplCopyWith<$Res>
    implements $DeliveryMethodCopyWith<$Res> {
  factory _$$DeliveryMethodImplCopyWith(_$DeliveryMethodImpl value,
          $Res Function(_$DeliveryMethodImpl) then) =
      __$$DeliveryMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String price});
}

/// @nodoc
class __$$DeliveryMethodImplCopyWithImpl<$Res>
    extends _$DeliveryMethodCopyWithImpl<$Res, _$DeliveryMethodImpl>
    implements _$$DeliveryMethodImplCopyWith<$Res> {
  __$$DeliveryMethodImplCopyWithImpl(
      _$DeliveryMethodImpl _value, $Res Function(_$DeliveryMethodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_$DeliveryMethodImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeliveryMethodImpl extends _DeliveryMethod {
  const _$DeliveryMethodImpl(
      {required this.id, required this.name, required this.price})
      : super._();

  @override
  final int id;
  @override
  final String name;
  @override
  final String price;

  @override
  String toString() {
    return 'DeliveryMethod(id: $id, name: $name, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryMethodImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryMethodImplCopyWith<_$DeliveryMethodImpl> get copyWith =>
      __$$DeliveryMethodImplCopyWithImpl<_$DeliveryMethodImpl>(
          this, _$identity);
}

abstract class _DeliveryMethod extends DeliveryMethod {
  const factory _DeliveryMethod(
      {required final int id,
      required final String name,
      required final String price}) = _$DeliveryMethodImpl;
  const _DeliveryMethod._() : super._();

  @override
  int get id;
  @override
  String get name;
  @override
  String get price;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryMethodImplCopyWith<_$DeliveryMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
