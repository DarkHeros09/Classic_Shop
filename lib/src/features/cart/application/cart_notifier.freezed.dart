// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartState {
  Fresh<List<ShopCartItem>> get cartItems => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<ShopCartItem>> cartItems) initial,
    required TResult Function(Fresh<List<ShopCartItem>> cartItems)
        loadInProgress,
    required TResult Function(Fresh<List<ShopCartItem>> cartItems) loadSuccess,
    required TResult Function(
            Fresh<List<ShopCartItem>> cartItems, ShopCartItemFailure failure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<ShopCartItem>> cartItems)? initial,
    TResult? Function(Fresh<List<ShopCartItem>> cartItems)? loadInProgress,
    TResult? Function(Fresh<List<ShopCartItem>> cartItems)? loadSuccess,
    TResult? Function(
            Fresh<List<ShopCartItem>> cartItems, ShopCartItemFailure failure)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<ShopCartItem>> cartItems)? initial,
    TResult Function(Fresh<List<ShopCartItem>> cartItems)? loadInProgress,
    TResult Function(Fresh<List<ShopCartItem>> cartItems)? loadSuccess,
    TResult Function(
            Fresh<List<ShopCartItem>> cartItems, ShopCartItemFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call({Fresh<List<ShopCartItem>> cartItems});

  $FreshCopyWith<List<ShopCartItem>, $Res> get cartItems;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
  }) {
    return _then(_value.copyWith(
      cartItems: null == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as Fresh<List<ShopCartItem>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FreshCopyWith<List<ShopCartItem>, $Res> get cartItems {
    return $FreshCopyWith<List<ShopCartItem>, $Res>(_value.cartItems, (value) {
      return _then(_value.copyWith(cartItems: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<ShopCartItem>> cartItems});

  @override
  $FreshCopyWith<List<ShopCartItem>, $Res> get cartItems;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
  }) {
    return _then(_$_Initial(
      null == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as Fresh<List<ShopCartItem>>,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial with DiagnosticableTreeMixin {
  const _$_Initial(this.cartItems) : super._();

  @override
  final Fresh<List<ShopCartItem>> cartItems;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartState.initial(cartItems: $cartItems)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartState.initial'))
      ..add(DiagnosticsProperty('cartItems', cartItems));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.cartItems, cartItems) ||
                other.cartItems == cartItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartItems);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<ShopCartItem>> cartItems) initial,
    required TResult Function(Fresh<List<ShopCartItem>> cartItems)
        loadInProgress,
    required TResult Function(Fresh<List<ShopCartItem>> cartItems) loadSuccess,
    required TResult Function(
            Fresh<List<ShopCartItem>> cartItems, ShopCartItemFailure failure)
        loadFailure,
  }) {
    return initial(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<ShopCartItem>> cartItems)? initial,
    TResult? Function(Fresh<List<ShopCartItem>> cartItems)? loadInProgress,
    TResult? Function(Fresh<List<ShopCartItem>> cartItems)? loadSuccess,
    TResult? Function(
            Fresh<List<ShopCartItem>> cartItems, ShopCartItemFailure failure)?
        loadFailure,
  }) {
    return initial?.call(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<ShopCartItem>> cartItems)? initial,
    TResult Function(Fresh<List<ShopCartItem>> cartItems)? loadInProgress,
    TResult Function(Fresh<List<ShopCartItem>> cartItems)? loadSuccess,
    TResult Function(
            Fresh<List<ShopCartItem>> cartItems, ShopCartItemFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(cartItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends CartState {
  const factory _Initial(final Fresh<List<ShopCartItem>> cartItems) =
      _$_Initial;
  const _Initial._() : super._();

  @override
  Fresh<List<ShopCartItem>> get cartItems;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<ShopCartItem>> cartItems});

  @override
  $FreshCopyWith<List<ShopCartItem>, $Res> get cartItems;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
  }) {
    return _then(_$_LoadInProgress(
      null == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as Fresh<List<ShopCartItem>>,
    ));
  }
}

/// @nodoc

class _$_LoadInProgress extends _LoadInProgress with DiagnosticableTreeMixin {
  const _$_LoadInProgress(this.cartItems) : super._();

  @override
  final Fresh<List<ShopCartItem>> cartItems;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartState.loadInProgress(cartItems: $cartItems)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartState.loadInProgress'))
      ..add(DiagnosticsProperty('cartItems', cartItems));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadInProgress &&
            (identical(other.cartItems, cartItems) ||
                other.cartItems == cartItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartItems);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadInProgressCopyWith<_$_LoadInProgress> get copyWith =>
      __$$_LoadInProgressCopyWithImpl<_$_LoadInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<ShopCartItem>> cartItems) initial,
    required TResult Function(Fresh<List<ShopCartItem>> cartItems)
        loadInProgress,
    required TResult Function(Fresh<List<ShopCartItem>> cartItems) loadSuccess,
    required TResult Function(
            Fresh<List<ShopCartItem>> cartItems, ShopCartItemFailure failure)
        loadFailure,
  }) {
    return loadInProgress(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<ShopCartItem>> cartItems)? initial,
    TResult? Function(Fresh<List<ShopCartItem>> cartItems)? loadInProgress,
    TResult? Function(Fresh<List<ShopCartItem>> cartItems)? loadSuccess,
    TResult? Function(
            Fresh<List<ShopCartItem>> cartItems, ShopCartItemFailure failure)?
        loadFailure,
  }) {
    return loadInProgress?.call(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<ShopCartItem>> cartItems)? initial,
    TResult Function(Fresh<List<ShopCartItem>> cartItems)? loadInProgress,
    TResult Function(Fresh<List<ShopCartItem>> cartItems)? loadSuccess,
    TResult Function(
            Fresh<List<ShopCartItem>> cartItems, ShopCartItemFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(cartItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress extends CartState {
  const factory _LoadInProgress(final Fresh<List<ShopCartItem>> cartItems) =
      _$_LoadInProgress;
  const _LoadInProgress._() : super._();

  @override
  Fresh<List<ShopCartItem>> get cartItems;
  @override
  @JsonKey(ignore: true)
  _$$_LoadInProgressCopyWith<_$_LoadInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<ShopCartItem>> cartItems});

  @override
  $FreshCopyWith<List<ShopCartItem>, $Res> get cartItems;
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
  }) {
    return _then(_$_LoadSuccess(
      null == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as Fresh<List<ShopCartItem>>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess extends _LoadSuccess with DiagnosticableTreeMixin {
  const _$_LoadSuccess(this.cartItems) : super._();

  @override
  final Fresh<List<ShopCartItem>> cartItems;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartState.loadSuccess(cartItems: $cartItems)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartState.loadSuccess'))
      ..add(DiagnosticsProperty('cartItems', cartItems));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            (identical(other.cartItems, cartItems) ||
                other.cartItems == cartItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartItems);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<ShopCartItem>> cartItems) initial,
    required TResult Function(Fresh<List<ShopCartItem>> cartItems)
        loadInProgress,
    required TResult Function(Fresh<List<ShopCartItem>> cartItems) loadSuccess,
    required TResult Function(
            Fresh<List<ShopCartItem>> cartItems, ShopCartItemFailure failure)
        loadFailure,
  }) {
    return loadSuccess(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<ShopCartItem>> cartItems)? initial,
    TResult? Function(Fresh<List<ShopCartItem>> cartItems)? loadInProgress,
    TResult? Function(Fresh<List<ShopCartItem>> cartItems)? loadSuccess,
    TResult? Function(
            Fresh<List<ShopCartItem>> cartItems, ShopCartItemFailure failure)?
        loadFailure,
  }) {
    return loadSuccess?.call(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<ShopCartItem>> cartItems)? initial,
    TResult Function(Fresh<List<ShopCartItem>> cartItems)? loadInProgress,
    TResult Function(Fresh<List<ShopCartItem>> cartItems)? loadSuccess,
    TResult Function(
            Fresh<List<ShopCartItem>> cartItems, ShopCartItemFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(cartItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess extends CartState {
  const factory _LoadSuccess(final Fresh<List<ShopCartItem>> cartItems) =
      _$_LoadSuccess;
  const _LoadSuccess._() : super._();

  @override
  Fresh<List<ShopCartItem>> get cartItems;
  @override
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<ShopCartItem>> cartItems, ShopCartItemFailure failure});

  @override
  $FreshCopyWith<List<ShopCartItem>, $Res> get cartItems;
  $ShopCartItemFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
    Object? failure = null,
  }) {
    return _then(_$_LoadFailure(
      null == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as Fresh<List<ShopCartItem>>,
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ShopCartItemFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ShopCartItemFailureCopyWith<$Res> get failure {
    return $ShopCartItemFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure extends _LoadFailure with DiagnosticableTreeMixin {
  const _$_LoadFailure(this.cartItems, this.failure) : super._();

  @override
  final Fresh<List<ShopCartItem>> cartItems;
  @override
  final ShopCartItemFailure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartState.loadFailure(cartItems: $cartItems, failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartState.loadFailure'))
      ..add(DiagnosticsProperty('cartItems', cartItems))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.cartItems, cartItems) ||
                other.cartItems == cartItems) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartItems, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<ShopCartItem>> cartItems) initial,
    required TResult Function(Fresh<List<ShopCartItem>> cartItems)
        loadInProgress,
    required TResult Function(Fresh<List<ShopCartItem>> cartItems) loadSuccess,
    required TResult Function(
            Fresh<List<ShopCartItem>> cartItems, ShopCartItemFailure failure)
        loadFailure,
  }) {
    return loadFailure(cartItems, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<ShopCartItem>> cartItems)? initial,
    TResult? Function(Fresh<List<ShopCartItem>> cartItems)? loadInProgress,
    TResult? Function(Fresh<List<ShopCartItem>> cartItems)? loadSuccess,
    TResult? Function(
            Fresh<List<ShopCartItem>> cartItems, ShopCartItemFailure failure)?
        loadFailure,
  }) {
    return loadFailure?.call(cartItems, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<ShopCartItem>> cartItems)? initial,
    TResult Function(Fresh<List<ShopCartItem>> cartItems)? loadInProgress,
    TResult Function(Fresh<List<ShopCartItem>> cartItems)? loadSuccess,
    TResult Function(
            Fresh<List<ShopCartItem>> cartItems, ShopCartItemFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(cartItems, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure extends CartState {
  const factory _LoadFailure(final Fresh<List<ShopCartItem>> cartItems,
      final ShopCartItemFailure failure) = _$_LoadFailure;
  const _LoadFailure._() : super._();

  @override
  Fresh<List<ShopCartItem>> get cartItems;
  ShopCartItemFailure get failure;
  @override
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
