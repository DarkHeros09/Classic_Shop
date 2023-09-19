// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_order_items_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShopOrderItemsState {
  Fresh<List<ShopOrderItems>> get shopOrderItems =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)
        initial,
    required TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)
        loadInProgress,
    required TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)
        loadSuccess,
    required TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems,
            ShopOrderItemsFailure failure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<ShopOrderItems>> shopOrderItems)? initial,
    TResult? Function(Fresh<List<ShopOrderItems>> shopOrderItems)?
        loadInProgress,
    TResult? Function(Fresh<List<ShopOrderItems>> shopOrderItems)? loadSuccess,
    TResult? Function(Fresh<List<ShopOrderItems>> shopOrderItems,
            ShopOrderItemsFailure failure)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)? initial,
    TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)?
        loadInProgress,
    TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)? loadSuccess,
    TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems,
            ShopOrderItemsFailure failure)?
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
  $ShopOrderItemsStateCopyWith<ShopOrderItemsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopOrderItemsStateCopyWith<$Res> {
  factory $ShopOrderItemsStateCopyWith(
          ShopOrderItemsState value, $Res Function(ShopOrderItemsState) then) =
      _$ShopOrderItemsStateCopyWithImpl<$Res, ShopOrderItemsState>;
  @useResult
  $Res call({Fresh<List<ShopOrderItems>> shopOrderItems});

  $FreshCopyWith<List<ShopOrderItems>, $Res> get shopOrderItems;
}

/// @nodoc
class _$ShopOrderItemsStateCopyWithImpl<$Res, $Val extends ShopOrderItemsState>
    implements $ShopOrderItemsStateCopyWith<$Res> {
  _$ShopOrderItemsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopOrderItems = null,
  }) {
    return _then(_value.copyWith(
      shopOrderItems: null == shopOrderItems
          ? _value.shopOrderItems
          : shopOrderItems // ignore: cast_nullable_to_non_nullable
              as Fresh<List<ShopOrderItems>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FreshCopyWith<List<ShopOrderItems>, $Res> get shopOrderItems {
    return $FreshCopyWith<List<ShopOrderItems>, $Res>(_value.shopOrderItems,
        (value) {
      return _then(_value.copyWith(shopOrderItems: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $ShopOrderItemsStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<ShopOrderItems>> shopOrderItems});

  @override
  $FreshCopyWith<List<ShopOrderItems>, $Res> get shopOrderItems;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ShopOrderItemsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopOrderItems = null,
  }) {
    return _then(_$_Initial(
      null == shopOrderItems
          ? _value.shopOrderItems
          : shopOrderItems // ignore: cast_nullable_to_non_nullable
              as Fresh<List<ShopOrderItems>>,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial with DiagnosticableTreeMixin {
  const _$_Initial(this.shopOrderItems) : super._();

  @override
  final Fresh<List<ShopOrderItems>> shopOrderItems;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShopOrderItemsState.initial(shopOrderItems: $shopOrderItems)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShopOrderItemsState.initial'))
      ..add(DiagnosticsProperty('shopOrderItems', shopOrderItems));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.shopOrderItems, shopOrderItems) ||
                other.shopOrderItems == shopOrderItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shopOrderItems);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)
        initial,
    required TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)
        loadInProgress,
    required TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)
        loadSuccess,
    required TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems,
            ShopOrderItemsFailure failure)
        loadFailure,
  }) {
    return initial(shopOrderItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<ShopOrderItems>> shopOrderItems)? initial,
    TResult? Function(Fresh<List<ShopOrderItems>> shopOrderItems)?
        loadInProgress,
    TResult? Function(Fresh<List<ShopOrderItems>> shopOrderItems)? loadSuccess,
    TResult? Function(Fresh<List<ShopOrderItems>> shopOrderItems,
            ShopOrderItemsFailure failure)?
        loadFailure,
  }) {
    return initial?.call(shopOrderItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)? initial,
    TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)?
        loadInProgress,
    TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)? loadSuccess,
    TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems,
            ShopOrderItemsFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(shopOrderItems);
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

abstract class _Initial extends ShopOrderItemsState {
  const factory _Initial(final Fresh<List<ShopOrderItems>> shopOrderItems) =
      _$_Initial;
  const _Initial._() : super._();

  @override
  Fresh<List<ShopOrderItems>> get shopOrderItems;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res>
    implements $ShopOrderItemsStateCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<ShopOrderItems>> shopOrderItems});

  @override
  $FreshCopyWith<List<ShopOrderItems>, $Res> get shopOrderItems;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$ShopOrderItemsStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopOrderItems = null,
  }) {
    return _then(_$_LoadInProgress(
      null == shopOrderItems
          ? _value.shopOrderItems
          : shopOrderItems // ignore: cast_nullable_to_non_nullable
              as Fresh<List<ShopOrderItems>>,
    ));
  }
}

/// @nodoc

class _$_LoadInProgress extends _LoadInProgress with DiagnosticableTreeMixin {
  const _$_LoadInProgress(this.shopOrderItems) : super._();

  @override
  final Fresh<List<ShopOrderItems>> shopOrderItems;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShopOrderItemsState.loadInProgress(shopOrderItems: $shopOrderItems)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShopOrderItemsState.loadInProgress'))
      ..add(DiagnosticsProperty('shopOrderItems', shopOrderItems));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadInProgress &&
            (identical(other.shopOrderItems, shopOrderItems) ||
                other.shopOrderItems == shopOrderItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shopOrderItems);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadInProgressCopyWith<_$_LoadInProgress> get copyWith =>
      __$$_LoadInProgressCopyWithImpl<_$_LoadInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)
        initial,
    required TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)
        loadInProgress,
    required TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)
        loadSuccess,
    required TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems,
            ShopOrderItemsFailure failure)
        loadFailure,
  }) {
    return loadInProgress(shopOrderItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<ShopOrderItems>> shopOrderItems)? initial,
    TResult? Function(Fresh<List<ShopOrderItems>> shopOrderItems)?
        loadInProgress,
    TResult? Function(Fresh<List<ShopOrderItems>> shopOrderItems)? loadSuccess,
    TResult? Function(Fresh<List<ShopOrderItems>> shopOrderItems,
            ShopOrderItemsFailure failure)?
        loadFailure,
  }) {
    return loadInProgress?.call(shopOrderItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)? initial,
    TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)?
        loadInProgress,
    TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)? loadSuccess,
    TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems,
            ShopOrderItemsFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(shopOrderItems);
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

abstract class _LoadInProgress extends ShopOrderItemsState {
  const factory _LoadInProgress(
      final Fresh<List<ShopOrderItems>> shopOrderItems) = _$_LoadInProgress;
  const _LoadInProgress._() : super._();

  @override
  Fresh<List<ShopOrderItems>> get shopOrderItems;
  @override
  @JsonKey(ignore: true)
  _$$_LoadInProgressCopyWith<_$_LoadInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res>
    implements $ShopOrderItemsStateCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<ShopOrderItems>> shopOrderItems});

  @override
  $FreshCopyWith<List<ShopOrderItems>, $Res> get shopOrderItems;
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$ShopOrderItemsStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopOrderItems = null,
  }) {
    return _then(_$_LoadSuccess(
      null == shopOrderItems
          ? _value.shopOrderItems
          : shopOrderItems // ignore: cast_nullable_to_non_nullable
              as Fresh<List<ShopOrderItems>>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess extends _LoadSuccess with DiagnosticableTreeMixin {
  const _$_LoadSuccess(this.shopOrderItems) : super._();

  @override
  final Fresh<List<ShopOrderItems>> shopOrderItems;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShopOrderItemsState.loadSuccess(shopOrderItems: $shopOrderItems)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShopOrderItemsState.loadSuccess'))
      ..add(DiagnosticsProperty('shopOrderItems', shopOrderItems));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            (identical(other.shopOrderItems, shopOrderItems) ||
                other.shopOrderItems == shopOrderItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shopOrderItems);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)
        initial,
    required TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)
        loadInProgress,
    required TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)
        loadSuccess,
    required TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems,
            ShopOrderItemsFailure failure)
        loadFailure,
  }) {
    return loadSuccess(shopOrderItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<ShopOrderItems>> shopOrderItems)? initial,
    TResult? Function(Fresh<List<ShopOrderItems>> shopOrderItems)?
        loadInProgress,
    TResult? Function(Fresh<List<ShopOrderItems>> shopOrderItems)? loadSuccess,
    TResult? Function(Fresh<List<ShopOrderItems>> shopOrderItems,
            ShopOrderItemsFailure failure)?
        loadFailure,
  }) {
    return loadSuccess?.call(shopOrderItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)? initial,
    TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)?
        loadInProgress,
    TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)? loadSuccess,
    TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems,
            ShopOrderItemsFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(shopOrderItems);
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

abstract class _LoadSuccess extends ShopOrderItemsState {
  const factory _LoadSuccess(final Fresh<List<ShopOrderItems>> shopOrderItems) =
      _$_LoadSuccess;
  const _LoadSuccess._() : super._();

  @override
  Fresh<List<ShopOrderItems>> get shopOrderItems;
  @override
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res>
    implements $ShopOrderItemsStateCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Fresh<List<ShopOrderItems>> shopOrderItems,
      ShopOrderItemsFailure failure});

  @override
  $FreshCopyWith<List<ShopOrderItems>, $Res> get shopOrderItems;
  $ShopOrderItemsFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$ShopOrderItemsStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopOrderItems = null,
    Object? failure = null,
  }) {
    return _then(_$_LoadFailure(
      null == shopOrderItems
          ? _value.shopOrderItems
          : shopOrderItems // ignore: cast_nullable_to_non_nullable
              as Fresh<List<ShopOrderItems>>,
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ShopOrderItemsFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ShopOrderItemsFailureCopyWith<$Res> get failure {
    return $ShopOrderItemsFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure extends _LoadFailure with DiagnosticableTreeMixin {
  const _$_LoadFailure(this.shopOrderItems, this.failure) : super._();

  @override
  final Fresh<List<ShopOrderItems>> shopOrderItems;
  @override
  final ShopOrderItemsFailure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShopOrderItemsState.loadFailure(shopOrderItems: $shopOrderItems, failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShopOrderItemsState.loadFailure'))
      ..add(DiagnosticsProperty('shopOrderItems', shopOrderItems))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.shopOrderItems, shopOrderItems) ||
                other.shopOrderItems == shopOrderItems) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shopOrderItems, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)
        initial,
    required TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)
        loadInProgress,
    required TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)
        loadSuccess,
    required TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems,
            ShopOrderItemsFailure failure)
        loadFailure,
  }) {
    return loadFailure(shopOrderItems, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<ShopOrderItems>> shopOrderItems)? initial,
    TResult? Function(Fresh<List<ShopOrderItems>> shopOrderItems)?
        loadInProgress,
    TResult? Function(Fresh<List<ShopOrderItems>> shopOrderItems)? loadSuccess,
    TResult? Function(Fresh<List<ShopOrderItems>> shopOrderItems,
            ShopOrderItemsFailure failure)?
        loadFailure,
  }) {
    return loadFailure?.call(shopOrderItems, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)? initial,
    TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)?
        loadInProgress,
    TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems)? loadSuccess,
    TResult Function(Fresh<List<ShopOrderItems>> shopOrderItems,
            ShopOrderItemsFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(shopOrderItems, failure);
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

abstract class _LoadFailure extends ShopOrderItemsState {
  const factory _LoadFailure(final Fresh<List<ShopOrderItems>> shopOrderItems,
      final ShopOrderItemsFailure failure) = _$_LoadFailure;
  const _LoadFailure._() : super._();

  @override
  Fresh<List<ShopOrderItems>> get shopOrderItems;
  ShopOrderItemsFailure get failure;
  @override
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
