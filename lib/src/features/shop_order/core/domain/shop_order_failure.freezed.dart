// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_order_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShopOrderFailure {
  int? get errorCode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? errorCode) api,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? errorCode)? api,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? errorCode)? api,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Api value) api,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Api value)? api,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Api value)? api,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ShopOrderFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShopOrderFailureCopyWith<ShopOrderFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopOrderFailureCopyWith<$Res> {
  factory $ShopOrderFailureCopyWith(
          ShopOrderFailure value, $Res Function(ShopOrderFailure) then) =
      _$ShopOrderFailureCopyWithImpl<$Res, ShopOrderFailure>;
  @useResult
  $Res call({int? errorCode});
}

/// @nodoc
class _$ShopOrderFailureCopyWithImpl<$Res, $Val extends ShopOrderFailure>
    implements $ShopOrderFailureCopyWith<$Res> {
  _$ShopOrderFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShopOrderFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = freezed,
  }) {
    return _then(_value.copyWith(
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiImplCopyWith<$Res>
    implements $ShopOrderFailureCopyWith<$Res> {
  factory _$$ApiImplCopyWith(_$ApiImpl value, $Res Function(_$ApiImpl) then) =
      __$$ApiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? errorCode});
}

/// @nodoc
class __$$ApiImplCopyWithImpl<$Res>
    extends _$ShopOrderFailureCopyWithImpl<$Res, _$ApiImpl>
    implements _$$ApiImplCopyWith<$Res> {
  __$$ApiImplCopyWithImpl(_$ApiImpl _value, $Res Function(_$ApiImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShopOrderFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = freezed,
  }) {
    return _then(_$ApiImpl(
      freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ApiImpl extends _Api {
  const _$ApiImpl(this.errorCode) : super._();

  @override
  final int? errorCode;

  @override
  String toString() {
    return 'ShopOrderFailure.api(errorCode: $errorCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiImpl &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorCode);

  /// Create a copy of ShopOrderFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiImplCopyWith<_$ApiImpl> get copyWith =>
      __$$ApiImplCopyWithImpl<_$ApiImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? errorCode) api,
  }) {
    return api(errorCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? errorCode)? api,
  }) {
    return api?.call(errorCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? errorCode)? api,
    required TResult orElse(),
  }) {
    if (api != null) {
      return api(errorCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Api value) api,
  }) {
    return api(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Api value)? api,
  }) {
    return api?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Api value)? api,
    required TResult orElse(),
  }) {
    if (api != null) {
      return api(this);
    }
    return orElse();
  }
}

abstract class _Api extends ShopOrderFailure {
  const factory _Api(final int? errorCode) = _$ApiImpl;
  const _Api._() : super._();

  @override
  int? get errorCode;

  /// Create a copy of ShopOrderFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiImplCopyWith<_$ApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
