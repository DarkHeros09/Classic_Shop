// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_order_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShopOrdersState {
  Fresh<List<ShopOrder>> get shopOrders => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<ShopOrder>> shopOrders) initial,
    required TResult Function(
            Fresh<List<ShopOrder>> shopOrders, int itemsPerPage)
        loadInProgress,
    required TResult Function(
            Fresh<List<ShopOrder>> shopOrders, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(
            Fresh<List<ShopOrder>> shopOrders, ShopOrderFailure failure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<ShopOrder>> shopOrders)? initial,
    TResult? Function(Fresh<List<ShopOrder>> shopOrders, int itemsPerPage)?
        loadInProgress,
    TResult? Function(
            Fresh<List<ShopOrder>> shopOrders, bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(
            Fresh<List<ShopOrder>> shopOrders, ShopOrderFailure failure)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<ShopOrder>> shopOrders)? initial,
    TResult Function(Fresh<List<ShopOrder>> shopOrders, int itemsPerPage)?
        loadInProgress,
    TResult Function(
            Fresh<List<ShopOrder>> shopOrders, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(
            Fresh<List<ShopOrder>> shopOrders, ShopOrderFailure failure)?
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

  /// Create a copy of ShopOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShopOrdersStateCopyWith<ShopOrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopOrdersStateCopyWith<$Res> {
  factory $ShopOrdersStateCopyWith(
          ShopOrdersState value, $Res Function(ShopOrdersState) then) =
      _$ShopOrdersStateCopyWithImpl<$Res, ShopOrdersState>;
  @useResult
  $Res call({Fresh<List<ShopOrder>> shopOrders});

  $FreshCopyWith<List<ShopOrder>, $Res> get shopOrders;
}

/// @nodoc
class _$ShopOrdersStateCopyWithImpl<$Res, $Val extends ShopOrdersState>
    implements $ShopOrdersStateCopyWith<$Res> {
  _$ShopOrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShopOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopOrders = null,
  }) {
    return _then(_value.copyWith(
      shopOrders: null == shopOrders
          ? _value.shopOrders
          : shopOrders // ignore: cast_nullable_to_non_nullable
              as Fresh<List<ShopOrder>>,
    ) as $Val);
  }

  /// Create a copy of ShopOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FreshCopyWith<List<ShopOrder>, $Res> get shopOrders {
    return $FreshCopyWith<List<ShopOrder>, $Res>(_value.shopOrders, (value) {
      return _then(_value.copyWith(shopOrders: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ShopOrdersStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<ShopOrder>> shopOrders});

  @override
  $FreshCopyWith<List<ShopOrder>, $Res> get shopOrders;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ShopOrdersStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShopOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopOrders = null,
  }) {
    return _then(_$InitialImpl(
      null == shopOrders
          ? _value.shopOrders
          : shopOrders // ignore: cast_nullable_to_non_nullable
              as Fresh<List<ShopOrder>>,
    ));
  }
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl(this.shopOrders) : super._();

  @override
  final Fresh<List<ShopOrder>> shopOrders;

  @override
  String toString() {
    return 'ShopOrdersState.initial(shopOrders: $shopOrders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.shopOrders, shopOrders) ||
                other.shopOrders == shopOrders));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shopOrders);

  /// Create a copy of ShopOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<ShopOrder>> shopOrders) initial,
    required TResult Function(
            Fresh<List<ShopOrder>> shopOrders, int itemsPerPage)
        loadInProgress,
    required TResult Function(
            Fresh<List<ShopOrder>> shopOrders, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(
            Fresh<List<ShopOrder>> shopOrders, ShopOrderFailure failure)
        loadFailure,
  }) {
    return initial(shopOrders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<ShopOrder>> shopOrders)? initial,
    TResult? Function(Fresh<List<ShopOrder>> shopOrders, int itemsPerPage)?
        loadInProgress,
    TResult? Function(
            Fresh<List<ShopOrder>> shopOrders, bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(
            Fresh<List<ShopOrder>> shopOrders, ShopOrderFailure failure)?
        loadFailure,
  }) {
    return initial?.call(shopOrders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<ShopOrder>> shopOrders)? initial,
    TResult Function(Fresh<List<ShopOrder>> shopOrders, int itemsPerPage)?
        loadInProgress,
    TResult Function(
            Fresh<List<ShopOrder>> shopOrders, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(
            Fresh<List<ShopOrder>> shopOrders, ShopOrderFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(shopOrders);
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

abstract class _Initial extends ShopOrdersState {
  const factory _Initial(final Fresh<List<ShopOrder>> shopOrders) =
      _$InitialImpl;
  const _Initial._() : super._();

  @override
  Fresh<List<ShopOrder>> get shopOrders;

  /// Create a copy of ShopOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<$Res>
    implements $ShopOrdersStateCopyWith<$Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl value,
          $Res Function(_$LoadInProgressImpl) then) =
      __$$LoadInProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<ShopOrder>> shopOrders, int itemsPerPage});

  @override
  $FreshCopyWith<List<ShopOrder>, $Res> get shopOrders;
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<$Res>
    extends _$ShopOrdersStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShopOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopOrders = null,
    Object? itemsPerPage = null,
  }) {
    return _then(_$LoadInProgressImpl(
      null == shopOrders
          ? _value.shopOrders
          : shopOrders // ignore: cast_nullable_to_non_nullable
              as Fresh<List<ShopOrder>>,
      null == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadInProgressImpl extends _LoadInProgress {
  const _$LoadInProgressImpl(this.shopOrders, this.itemsPerPage) : super._();

  @override
  final Fresh<List<ShopOrder>> shopOrders;
// Fresh<List<ShopOrder>> shopOrdersProcessing,
// Fresh<List<ShopOrder>> shopOrdersDelivered,
// Fresh<List<ShopOrder>> shopOrdersCancelled,
  @override
  final int itemsPerPage;

  @override
  String toString() {
    return 'ShopOrdersState.loadInProgress(shopOrders: $shopOrders, itemsPerPage: $itemsPerPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadInProgressImpl &&
            (identical(other.shopOrders, shopOrders) ||
                other.shopOrders == shopOrders) &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                other.itemsPerPage == itemsPerPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shopOrders, itemsPerPage);

  /// Create a copy of ShopOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadInProgressImplCopyWith<_$LoadInProgressImpl> get copyWith =>
      __$$LoadInProgressImplCopyWithImpl<_$LoadInProgressImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<ShopOrder>> shopOrders) initial,
    required TResult Function(
            Fresh<List<ShopOrder>> shopOrders, int itemsPerPage)
        loadInProgress,
    required TResult Function(
            Fresh<List<ShopOrder>> shopOrders, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(
            Fresh<List<ShopOrder>> shopOrders, ShopOrderFailure failure)
        loadFailure,
  }) {
    return loadInProgress(shopOrders, itemsPerPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<ShopOrder>> shopOrders)? initial,
    TResult? Function(Fresh<List<ShopOrder>> shopOrders, int itemsPerPage)?
        loadInProgress,
    TResult? Function(
            Fresh<List<ShopOrder>> shopOrders, bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(
            Fresh<List<ShopOrder>> shopOrders, ShopOrderFailure failure)?
        loadFailure,
  }) {
    return loadInProgress?.call(shopOrders, itemsPerPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<ShopOrder>> shopOrders)? initial,
    TResult Function(Fresh<List<ShopOrder>> shopOrders, int itemsPerPage)?
        loadInProgress,
    TResult Function(
            Fresh<List<ShopOrder>> shopOrders, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(
            Fresh<List<ShopOrder>> shopOrders, ShopOrderFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(shopOrders, itemsPerPage);
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

abstract class _LoadInProgress extends ShopOrdersState {
  const factory _LoadInProgress(
          final Fresh<List<ShopOrder>> shopOrders, final int itemsPerPage) =
      _$LoadInProgressImpl;
  const _LoadInProgress._() : super._();

  @override
  Fresh<List<ShopOrder>>
      get shopOrders; // Fresh<List<ShopOrder>> shopOrdersProcessing,
// Fresh<List<ShopOrder>> shopOrdersDelivered,
// Fresh<List<ShopOrder>> shopOrdersCancelled,
  int get itemsPerPage;

  /// Create a copy of ShopOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadInProgressImplCopyWith<_$LoadInProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadSuccessImplCopyWith<$Res>
    implements $ShopOrdersStateCopyWith<$Res> {
  factory _$$LoadSuccessImplCopyWith(
          _$LoadSuccessImpl value, $Res Function(_$LoadSuccessImpl) then) =
      __$$LoadSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<ShopOrder>> shopOrders, bool isNextPageAvailable});

  @override
  $FreshCopyWith<List<ShopOrder>, $Res> get shopOrders;
}

/// @nodoc
class __$$LoadSuccessImplCopyWithImpl<$Res>
    extends _$ShopOrdersStateCopyWithImpl<$Res, _$LoadSuccessImpl>
    implements _$$LoadSuccessImplCopyWith<$Res> {
  __$$LoadSuccessImplCopyWithImpl(
      _$LoadSuccessImpl _value, $Res Function(_$LoadSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShopOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopOrders = null,
    Object? isNextPageAvailable = null,
  }) {
    return _then(_$LoadSuccessImpl(
      null == shopOrders
          ? _value.shopOrders
          : shopOrders // ignore: cast_nullable_to_non_nullable
              as Fresh<List<ShopOrder>>,
      isNextPageAvailable: null == isNextPageAvailable
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadSuccessImpl extends _LoadSuccess {
  const _$LoadSuccessImpl(this.shopOrders, {required this.isNextPageAvailable})
      : super._();

  @override
  final Fresh<List<ShopOrder>> shopOrders;
  @override
  final bool isNextPageAvailable;

  @override
  String toString() {
    return 'ShopOrdersState.loadSuccess(shopOrders: $shopOrders, isNextPageAvailable: $isNextPageAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessImpl &&
            (identical(other.shopOrders, shopOrders) ||
                other.shopOrders == shopOrders) &&
            (identical(other.isNextPageAvailable, isNextPageAvailable) ||
                other.isNextPageAvailable == isNextPageAvailable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shopOrders, isNextPageAvailable);

  /// Create a copy of ShopOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      __$$LoadSuccessImplCopyWithImpl<_$LoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<ShopOrder>> shopOrders) initial,
    required TResult Function(
            Fresh<List<ShopOrder>> shopOrders, int itemsPerPage)
        loadInProgress,
    required TResult Function(
            Fresh<List<ShopOrder>> shopOrders, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(
            Fresh<List<ShopOrder>> shopOrders, ShopOrderFailure failure)
        loadFailure,
  }) {
    return loadSuccess(shopOrders, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<ShopOrder>> shopOrders)? initial,
    TResult? Function(Fresh<List<ShopOrder>> shopOrders, int itemsPerPage)?
        loadInProgress,
    TResult? Function(
            Fresh<List<ShopOrder>> shopOrders, bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(
            Fresh<List<ShopOrder>> shopOrders, ShopOrderFailure failure)?
        loadFailure,
  }) {
    return loadSuccess?.call(shopOrders, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<ShopOrder>> shopOrders)? initial,
    TResult Function(Fresh<List<ShopOrder>> shopOrders, int itemsPerPage)?
        loadInProgress,
    TResult Function(
            Fresh<List<ShopOrder>> shopOrders, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(
            Fresh<List<ShopOrder>> shopOrders, ShopOrderFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(shopOrders, isNextPageAvailable);
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

abstract class _LoadSuccess extends ShopOrdersState {
  const factory _LoadSuccess(final Fresh<List<ShopOrder>> shopOrders,
      {required final bool isNextPageAvailable}) = _$LoadSuccessImpl;
  const _LoadSuccess._() : super._();

  @override
  Fresh<List<ShopOrder>> get shopOrders;
  bool get isNextPageAvailable;

  /// Create a copy of ShopOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailureImplCopyWith<$Res>
    implements $ShopOrdersStateCopyWith<$Res> {
  factory _$$LoadFailureImplCopyWith(
          _$LoadFailureImpl value, $Res Function(_$LoadFailureImpl) then) =
      __$$LoadFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<ShopOrder>> shopOrders, ShopOrderFailure failure});

  @override
  $FreshCopyWith<List<ShopOrder>, $Res> get shopOrders;
  $ShopOrderFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$LoadFailureImplCopyWithImpl<$Res>
    extends _$ShopOrdersStateCopyWithImpl<$Res, _$LoadFailureImpl>
    implements _$$LoadFailureImplCopyWith<$Res> {
  __$$LoadFailureImplCopyWithImpl(
      _$LoadFailureImpl _value, $Res Function(_$LoadFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShopOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopOrders = null,
    Object? failure = null,
  }) {
    return _then(_$LoadFailureImpl(
      null == shopOrders
          ? _value.shopOrders
          : shopOrders // ignore: cast_nullable_to_non_nullable
              as Fresh<List<ShopOrder>>,
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ShopOrderFailure,
    ));
  }

  /// Create a copy of ShopOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShopOrderFailureCopyWith<$Res> get failure {
    return $ShopOrderFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$LoadFailureImpl extends _LoadFailure {
  const _$LoadFailureImpl(this.shopOrders, this.failure) : super._();

  @override
  final Fresh<List<ShopOrder>> shopOrders;
// Fresh<List<ShopOrder>> shopOrdersProcessing,
// Fresh<List<ShopOrder>> shopOrdersDelivered,
// Fresh<List<ShopOrder>> shopOrdersCancelled,
  @override
  final ShopOrderFailure failure;

  @override
  String toString() {
    return 'ShopOrdersState.loadFailure(shopOrders: $shopOrders, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailureImpl &&
            (identical(other.shopOrders, shopOrders) ||
                other.shopOrders == shopOrders) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shopOrders, failure);

  /// Create a copy of ShopOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      __$$LoadFailureImplCopyWithImpl<_$LoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<ShopOrder>> shopOrders) initial,
    required TResult Function(
            Fresh<List<ShopOrder>> shopOrders, int itemsPerPage)
        loadInProgress,
    required TResult Function(
            Fresh<List<ShopOrder>> shopOrders, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(
            Fresh<List<ShopOrder>> shopOrders, ShopOrderFailure failure)
        loadFailure,
  }) {
    return loadFailure(shopOrders, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<ShopOrder>> shopOrders)? initial,
    TResult? Function(Fresh<List<ShopOrder>> shopOrders, int itemsPerPage)?
        loadInProgress,
    TResult? Function(
            Fresh<List<ShopOrder>> shopOrders, bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(
            Fresh<List<ShopOrder>> shopOrders, ShopOrderFailure failure)?
        loadFailure,
  }) {
    return loadFailure?.call(shopOrders, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<ShopOrder>> shopOrders)? initial,
    TResult Function(Fresh<List<ShopOrder>> shopOrders, int itemsPerPage)?
        loadInProgress,
    TResult Function(
            Fresh<List<ShopOrder>> shopOrders, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(
            Fresh<List<ShopOrder>> shopOrders, ShopOrderFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(shopOrders, failure);
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

abstract class _LoadFailure extends ShopOrdersState {
  const factory _LoadFailure(final Fresh<List<ShopOrder>> shopOrders,
      final ShopOrderFailure failure) = _$LoadFailureImpl;
  const _LoadFailure._() : super._();

  @override
  Fresh<List<ShopOrder>>
      get shopOrders; // Fresh<List<ShopOrder>> shopOrdersProcessing,
// Fresh<List<ShopOrder>> shopOrdersDelivered,
// Fresh<List<ShopOrder>> shopOrdersCancelled,
  ShopOrderFailure get failure;

  /// Create a copy of ShopOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
