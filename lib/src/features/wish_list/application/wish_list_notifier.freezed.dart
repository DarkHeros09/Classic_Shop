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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$InitialImplCopyWith<$Res>
    implements $WishListStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<WishListItem>> wishListItems});

  @override
  $FreshCopyWith<List<WishListItem>, $Res> get wishListItems;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$WishListStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishListItems = null,
  }) {
    return _then(_$InitialImpl(
      null == wishListItems
          ? _value.wishListItems
          : wishListItems // ignore: cast_nullable_to_non_nullable
              as Fresh<List<WishListItem>>,
    ));
  }
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl(this.wishListItems) : super._();

  @override
  final Fresh<List<WishListItem>> wishListItems;

  @override
  String toString() {
    return 'WishListState.initial(wishListItems: $wishListItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.wishListItems, wishListItems) ||
                other.wishListItems == wishListItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wishListItems);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

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
      _$InitialImpl;
  const _Initial._() : super._();

  @override
  Fresh<List<WishListItem>> get wishListItems;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<$Res>
    implements $WishListStateCopyWith<$Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl value,
          $Res Function(_$LoadInProgressImpl) then) =
      __$$LoadInProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<WishListItem>> wishListItems});

  @override
  $FreshCopyWith<List<WishListItem>, $Res> get wishListItems;
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<$Res>
    extends _$WishListStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishListItems = null,
  }) {
    return _then(_$LoadInProgressImpl(
      null == wishListItems
          ? _value.wishListItems
          : wishListItems // ignore: cast_nullable_to_non_nullable
              as Fresh<List<WishListItem>>,
    ));
  }
}

/// @nodoc

class _$LoadInProgressImpl extends _LoadInProgress {
  const _$LoadInProgressImpl(this.wishListItems) : super._();

  @override
  final Fresh<List<WishListItem>> wishListItems;

  @override
  String toString() {
    return 'WishListState.loadInProgress(wishListItems: $wishListItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadInProgressImpl &&
            (identical(other.wishListItems, wishListItems) ||
                other.wishListItems == wishListItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wishListItems);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadInProgressImplCopyWith<_$LoadInProgressImpl> get copyWith =>
      __$$LoadInProgressImplCopyWithImpl<_$LoadInProgressImpl>(
          this, _$identity);

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
      _$LoadInProgressImpl;
  const _LoadInProgress._() : super._();

  @override
  Fresh<List<WishListItem>> get wishListItems;
  @override
  @JsonKey(ignore: true)
  _$$LoadInProgressImplCopyWith<_$LoadInProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadSuccessImplCopyWith<$Res>
    implements $WishListStateCopyWith<$Res> {
  factory _$$LoadSuccessImplCopyWith(
          _$LoadSuccessImpl value, $Res Function(_$LoadSuccessImpl) then) =
      __$$LoadSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<WishListItem>> wishListItems});

  @override
  $FreshCopyWith<List<WishListItem>, $Res> get wishListItems;
}

/// @nodoc
class __$$LoadSuccessImplCopyWithImpl<$Res>
    extends _$WishListStateCopyWithImpl<$Res, _$LoadSuccessImpl>
    implements _$$LoadSuccessImplCopyWith<$Res> {
  __$$LoadSuccessImplCopyWithImpl(
      _$LoadSuccessImpl _value, $Res Function(_$LoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishListItems = null,
  }) {
    return _then(_$LoadSuccessImpl(
      null == wishListItems
          ? _value.wishListItems
          : wishListItems // ignore: cast_nullable_to_non_nullable
              as Fresh<List<WishListItem>>,
    ));
  }
}

/// @nodoc

class _$LoadSuccessImpl extends _LoadSuccess {
  const _$LoadSuccessImpl(this.wishListItems) : super._();

  @override
  final Fresh<List<WishListItem>> wishListItems;

  @override
  String toString() {
    return 'WishListState.loadSuccess(wishListItems: $wishListItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessImpl &&
            (identical(other.wishListItems, wishListItems) ||
                other.wishListItems == wishListItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wishListItems);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      __$$LoadSuccessImplCopyWithImpl<_$LoadSuccessImpl>(this, _$identity);

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
      _$LoadSuccessImpl;
  const _LoadSuccess._() : super._();

  @override
  Fresh<List<WishListItem>> get wishListItems;
  @override
  @JsonKey(ignore: true)
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailureImplCopyWith<$Res>
    implements $WishListStateCopyWith<$Res> {
  factory _$$LoadFailureImplCopyWith(
          _$LoadFailureImpl value, $Res Function(_$LoadFailureImpl) then) =
      __$$LoadFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Fresh<List<WishListItem>> wishListItems, WishListItemFailure failure});

  @override
  $FreshCopyWith<List<WishListItem>, $Res> get wishListItems;
  $WishListItemFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$LoadFailureImplCopyWithImpl<$Res>
    extends _$WishListStateCopyWithImpl<$Res, _$LoadFailureImpl>
    implements _$$LoadFailureImplCopyWith<$Res> {
  __$$LoadFailureImplCopyWithImpl(
      _$LoadFailureImpl _value, $Res Function(_$LoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishListItems = null,
    Object? failure = null,
  }) {
    return _then(_$LoadFailureImpl(
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

class _$LoadFailureImpl extends _LoadFailure {
  const _$LoadFailureImpl(this.wishListItems, this.failure) : super._();

  @override
  final Fresh<List<WishListItem>> wishListItems;
  @override
  final WishListItemFailure failure;

  @override
  String toString() {
    return 'WishListState.loadFailure(wishListItems: $wishListItems, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailureImpl &&
            (identical(other.wishListItems, wishListItems) ||
                other.wishListItems == wishListItems) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wishListItems, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      __$$LoadFailureImplCopyWithImpl<_$LoadFailureImpl>(this, _$identity);

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
      final WishListItemFailure failure) = _$LoadFailureImpl;
  const _LoadFailure._() : super._();

  @override
  Fresh<List<WishListItem>> get wishListItems;
  WishListItemFailure get failure;
  @override
  @JsonKey(ignore: true)
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
