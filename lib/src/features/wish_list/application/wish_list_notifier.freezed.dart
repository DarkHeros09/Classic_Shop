// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wish_list_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WishListState {
  Fresh<List<WishListItem>> get wishListItems =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<WishListItem>> wishListItems) initial,
    required TResult Function(Fresh<List<WishListItem>> wishListItems)
        loadInProgress,
    required TResult Function(Fresh<List<WishListItem>> wishListItems)
        loadSuccess,
    required TResult Function(Fresh<List<WishListItem>> wishListItems,
            WishListItemFailure failure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<WishListItem>> wishListItems)? initial,
    TResult? Function(Fresh<List<WishListItem>> wishListItems)? loadInProgress,
    TResult? Function(Fresh<List<WishListItem>> wishListItems)? loadSuccess,
    TResult? Function(Fresh<List<WishListItem>> wishListItems,
            WishListItemFailure failure)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<WishListItem>> wishListItems)? initial,
    TResult Function(Fresh<List<WishListItem>> wishListItems)? loadInProgress,
    TResult Function(Fresh<List<WishListItem>> wishListItems)? loadSuccess,
    TResult Function(Fresh<List<WishListItem>> wishListItems,
            WishListItemFailure failure)?
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
  $WishListStateCopyWith<WishListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishListStateCopyWith<$Res> {
  factory $WishListStateCopyWith(
          WishListState value, $Res Function(WishListState) then) =
      _$WishListStateCopyWithImpl<$Res, WishListState>;
  @useResult
  $Res call({Fresh<List<WishListItem>> wishListItems});

  $FreshCopyWith<List<WishListItem>, $Res> get wishListItems;
}

/// @nodoc
class _$WishListStateCopyWithImpl<$Res, $Val extends WishListState>
    implements $WishListStateCopyWith<$Res> {
  _$WishListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishListItems = null,
  }) {
    return _then(_value.copyWith(
      wishListItems: null == wishListItems
          ? _value.wishListItems
          : wishListItems // ignore: cast_nullable_to_non_nullable
              as Fresh<List<WishListItem>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FreshCopyWith<List<WishListItem>, $Res> get wishListItems {
    return $FreshCopyWith<List<WishListItem>, $Res>(_value.wishListItems,
        (value) {
      return _then(_value.copyWith(wishListItems: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $WishListStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<WishListItem>> wishListItems});

  @override
  $FreshCopyWith<List<WishListItem>, $Res> get wishListItems;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$WishListStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishListItems = null,
  }) {
    return _then(_$_Initial(
      null == wishListItems
          ? _value.wishListItems
          : wishListItems // ignore: cast_nullable_to_non_nullable
              as Fresh<List<WishListItem>>,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(this.wishListItems) : super._();

  @override
  final Fresh<List<WishListItem>> wishListItems;

  @override
  String toString() {
    return 'WishListState.initial(wishListItems: $wishListItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.wishListItems, wishListItems) ||
                other.wishListItems == wishListItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wishListItems);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<WishListItem>> wishListItems) initial,
    required TResult Function(Fresh<List<WishListItem>> wishListItems)
        loadInProgress,
    required TResult Function(Fresh<List<WishListItem>> wishListItems)
        loadSuccess,
    required TResult Function(Fresh<List<WishListItem>> wishListItems,
            WishListItemFailure failure)
        loadFailure,
  }) {
    return initial(wishListItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<WishListItem>> wishListItems)? initial,
    TResult? Function(Fresh<List<WishListItem>> wishListItems)? loadInProgress,
    TResult? Function(Fresh<List<WishListItem>> wishListItems)? loadSuccess,
    TResult? Function(Fresh<List<WishListItem>> wishListItems,
            WishListItemFailure failure)?
        loadFailure,
  }) {
    return initial?.call(wishListItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<WishListItem>> wishListItems)? initial,
    TResult Function(Fresh<List<WishListItem>> wishListItems)? loadInProgress,
    TResult Function(Fresh<List<WishListItem>> wishListItems)? loadSuccess,
    TResult Function(Fresh<List<WishListItem>> wishListItems,
            WishListItemFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(wishListItems);
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

abstract class _Initial extends WishListState {
  const factory _Initial(final Fresh<List<WishListItem>> wishListItems) =
      _$_Initial;
  const _Initial._() : super._();

  @override
  Fresh<List<WishListItem>> get wishListItems;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res>
    implements $WishListStateCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<WishListItem>> wishListItems});

  @override
  $FreshCopyWith<List<WishListItem>, $Res> get wishListItems;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$WishListStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishListItems = null,
  }) {
    return _then(_$_LoadInProgress(
      null == wishListItems
          ? _value.wishListItems
          : wishListItems // ignore: cast_nullable_to_non_nullable
              as Fresh<List<WishListItem>>,
    ));
  }
}

/// @nodoc

class _$_LoadInProgress extends _LoadInProgress {
  const _$_LoadInProgress(this.wishListItems) : super._();

  @override
  final Fresh<List<WishListItem>> wishListItems;

  @override
  String toString() {
    return 'WishListState.loadInProgress(wishListItems: $wishListItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadInProgress &&
            (identical(other.wishListItems, wishListItems) ||
                other.wishListItems == wishListItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wishListItems);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadInProgressCopyWith<_$_LoadInProgress> get copyWith =>
      __$$_LoadInProgressCopyWithImpl<_$_LoadInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<WishListItem>> wishListItems) initial,
    required TResult Function(Fresh<List<WishListItem>> wishListItems)
        loadInProgress,
    required TResult Function(Fresh<List<WishListItem>> wishListItems)
        loadSuccess,
    required TResult Function(Fresh<List<WishListItem>> wishListItems,
            WishListItemFailure failure)
        loadFailure,
  }) {
    return loadInProgress(wishListItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<WishListItem>> wishListItems)? initial,
    TResult? Function(Fresh<List<WishListItem>> wishListItems)? loadInProgress,
    TResult? Function(Fresh<List<WishListItem>> wishListItems)? loadSuccess,
    TResult? Function(Fresh<List<WishListItem>> wishListItems,
            WishListItemFailure failure)?
        loadFailure,
  }) {
    return loadInProgress?.call(wishListItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<WishListItem>> wishListItems)? initial,
    TResult Function(Fresh<List<WishListItem>> wishListItems)? loadInProgress,
    TResult Function(Fresh<List<WishListItem>> wishListItems)? loadSuccess,
    TResult Function(Fresh<List<WishListItem>> wishListItems,
            WishListItemFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(wishListItems);
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

abstract class _LoadInProgress extends WishListState {
  const factory _LoadInProgress(final Fresh<List<WishListItem>> wishListItems) =
      _$_LoadInProgress;
  const _LoadInProgress._() : super._();

  @override
  Fresh<List<WishListItem>> get wishListItems;
  @override
  @JsonKey(ignore: true)
  _$$_LoadInProgressCopyWith<_$_LoadInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res>
    implements $WishListStateCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<WishListItem>> wishListItems});

  @override
  $FreshCopyWith<List<WishListItem>, $Res> get wishListItems;
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$WishListStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishListItems = null,
  }) {
    return _then(_$_LoadSuccess(
      null == wishListItems
          ? _value.wishListItems
          : wishListItems // ignore: cast_nullable_to_non_nullable
              as Fresh<List<WishListItem>>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess extends _LoadSuccess {
  const _$_LoadSuccess(this.wishListItems) : super._();

  @override
  final Fresh<List<WishListItem>> wishListItems;

  @override
  String toString() {
    return 'WishListState.loadSuccess(wishListItems: $wishListItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            (identical(other.wishListItems, wishListItems) ||
                other.wishListItems == wishListItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wishListItems);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<WishListItem>> wishListItems) initial,
    required TResult Function(Fresh<List<WishListItem>> wishListItems)
        loadInProgress,
    required TResult Function(Fresh<List<WishListItem>> wishListItems)
        loadSuccess,
    required TResult Function(Fresh<List<WishListItem>> wishListItems,
            WishListItemFailure failure)
        loadFailure,
  }) {
    return loadSuccess(wishListItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<WishListItem>> wishListItems)? initial,
    TResult? Function(Fresh<List<WishListItem>> wishListItems)? loadInProgress,
    TResult? Function(Fresh<List<WishListItem>> wishListItems)? loadSuccess,
    TResult? Function(Fresh<List<WishListItem>> wishListItems,
            WishListItemFailure failure)?
        loadFailure,
  }) {
    return loadSuccess?.call(wishListItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<WishListItem>> wishListItems)? initial,
    TResult Function(Fresh<List<WishListItem>> wishListItems)? loadInProgress,
    TResult Function(Fresh<List<WishListItem>> wishListItems)? loadSuccess,
    TResult Function(Fresh<List<WishListItem>> wishListItems,
            WishListItemFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(wishListItems);
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

abstract class _LoadSuccess extends WishListState {
  const factory _LoadSuccess(final Fresh<List<WishListItem>> wishListItems) =
      _$_LoadSuccess;
  const _LoadSuccess._() : super._();

  @override
  Fresh<List<WishListItem>> get wishListItems;
  @override
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res>
    implements $WishListStateCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Fresh<List<WishListItem>> wishListItems, WishListItemFailure failure});

  @override
  $FreshCopyWith<List<WishListItem>, $Res> get wishListItems;
  $WishListItemFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$WishListStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishListItems = null,
    Object? failure = null,
  }) {
    return _then(_$_LoadFailure(
      null == wishListItems
          ? _value.wishListItems
          : wishListItems // ignore: cast_nullable_to_non_nullable
              as Fresh<List<WishListItem>>,
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as WishListItemFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WishListItemFailureCopyWith<$Res> get failure {
    return $WishListItemFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure extends _LoadFailure {
  const _$_LoadFailure(this.wishListItems, this.failure) : super._();

  @override
  final Fresh<List<WishListItem>> wishListItems;
  @override
  final WishListItemFailure failure;

  @override
  String toString() {
    return 'WishListState.loadFailure(wishListItems: $wishListItems, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.wishListItems, wishListItems) ||
                other.wishListItems == wishListItems) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wishListItems, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<WishListItem>> wishListItems) initial,
    required TResult Function(Fresh<List<WishListItem>> wishListItems)
        loadInProgress,
    required TResult Function(Fresh<List<WishListItem>> wishListItems)
        loadSuccess,
    required TResult Function(Fresh<List<WishListItem>> wishListItems,
            WishListItemFailure failure)
        loadFailure,
  }) {
    return loadFailure(wishListItems, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<WishListItem>> wishListItems)? initial,
    TResult? Function(Fresh<List<WishListItem>> wishListItems)? loadInProgress,
    TResult? Function(Fresh<List<WishListItem>> wishListItems)? loadSuccess,
    TResult? Function(Fresh<List<WishListItem>> wishListItems,
            WishListItemFailure failure)?
        loadFailure,
  }) {
    return loadFailure?.call(wishListItems, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<WishListItem>> wishListItems)? initial,
    TResult Function(Fresh<List<WishListItem>> wishListItems)? loadInProgress,
    TResult Function(Fresh<List<WishListItem>> wishListItems)? loadSuccess,
    TResult Function(Fresh<List<WishListItem>> wishListItems,
            WishListItemFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(wishListItems, failure);
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

abstract class _LoadFailure extends WishListState {
  const factory _LoadFailure(final Fresh<List<WishListItem>> wishListItems,
      final WishListItemFailure failure) = _$_LoadFailure;
  const _LoadFailure._() : super._();

  @override
  Fresh<List<WishListItem>> get wishListItems;
  WishListItemFailure get failure;
  @override
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
