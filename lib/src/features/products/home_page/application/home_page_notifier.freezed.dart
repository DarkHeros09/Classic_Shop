// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomePageState {
  Fresh<List<Product>> get products => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Product>> products) initial,
    required TResult Function(Fresh<List<Product>> products, int itemsPerPage)
        loadInProgress,
    required TResult Function(
            Fresh<List<Product>> products, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(
            Fresh<List<Product>> products, ProductFailure failure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<Product>> products)? initial,
    TResult? Function(Fresh<List<Product>> products, int itemsPerPage)?
        loadInProgress,
    TResult? Function(Fresh<List<Product>> products, bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(Fresh<List<Product>> products, ProductFailure failure)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Product>> products)? initial,
    TResult Function(Fresh<List<Product>> products, int itemsPerPage)?
        loadInProgress,
    TResult Function(Fresh<List<Product>> products, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<Product>> products, ProductFailure failure)?
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
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res, HomePageState>;
  @useResult
  $Res call({Fresh<List<Product>> products});

  $FreshCopyWith<List<Product>, $Res> get products;
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res, $Val extends HomePageState>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Product>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FreshCopyWith<List<Product>, $Res> get products {
    return $FreshCopyWith<List<Product>, $Res>(_value.products, (value) {
      return _then(_value.copyWith(products: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<Product>> products});

  @override
  $FreshCopyWith<List<Product>, $Res> get products;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$_Initial(
      null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Product>>,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(this.products) : super._();

  @override
  final Fresh<List<Product>> products;

  @override
  String toString() {
    return 'HomePageState.initial(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.products, products) ||
                other.products == products));
  }

  @override
  int get hashCode => Object.hash(runtimeType, products);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Product>> products) initial,
    required TResult Function(Fresh<List<Product>> products, int itemsPerPage)
        loadInProgress,
    required TResult Function(
            Fresh<List<Product>> products, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(
            Fresh<List<Product>> products, ProductFailure failure)
        loadFailure,
  }) {
    return initial(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<Product>> products)? initial,
    TResult? Function(Fresh<List<Product>> products, int itemsPerPage)?
        loadInProgress,
    TResult? Function(Fresh<List<Product>> products, bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(Fresh<List<Product>> products, ProductFailure failure)?
        loadFailure,
  }) {
    return initial?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Product>> products)? initial,
    TResult Function(Fresh<List<Product>> products, int itemsPerPage)?
        loadInProgress,
    TResult Function(Fresh<List<Product>> products, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<Product>> products, ProductFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(products);
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

abstract class _Initial extends HomePageState {
  const factory _Initial(final Fresh<List<Product>> products) = _$_Initial;
  const _Initial._() : super._();

  @override
  Fresh<List<Product>> get products;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<Product>> products, int itemsPerPage});

  @override
  $FreshCopyWith<List<Product>, $Res> get products;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? itemsPerPage = null,
  }) {
    return _then(_$_LoadInProgress(
      null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Product>>,
      null == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LoadInProgress extends _LoadInProgress {
  const _$_LoadInProgress(this.products, this.itemsPerPage) : super._();

  @override
  final Fresh<List<Product>> products;
  @override
  final int itemsPerPage;

  @override
  String toString() {
    return 'HomePageState.loadInProgress(products: $products, itemsPerPage: $itemsPerPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadInProgress &&
            (identical(other.products, products) ||
                other.products == products) &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                other.itemsPerPage == itemsPerPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, products, itemsPerPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadInProgressCopyWith<_$_LoadInProgress> get copyWith =>
      __$$_LoadInProgressCopyWithImpl<_$_LoadInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Product>> products) initial,
    required TResult Function(Fresh<List<Product>> products, int itemsPerPage)
        loadInProgress,
    required TResult Function(
            Fresh<List<Product>> products, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(
            Fresh<List<Product>> products, ProductFailure failure)
        loadFailure,
  }) {
    return loadInProgress(products, itemsPerPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<Product>> products)? initial,
    TResult? Function(Fresh<List<Product>> products, int itemsPerPage)?
        loadInProgress,
    TResult? Function(Fresh<List<Product>> products, bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(Fresh<List<Product>> products, ProductFailure failure)?
        loadFailure,
  }) {
    return loadInProgress?.call(products, itemsPerPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Product>> products)? initial,
    TResult Function(Fresh<List<Product>> products, int itemsPerPage)?
        loadInProgress,
    TResult Function(Fresh<List<Product>> products, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<Product>> products, ProductFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(products, itemsPerPage);
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

abstract class _LoadInProgress extends HomePageState {
  const factory _LoadInProgress(
          final Fresh<List<Product>> products, final int itemsPerPage) =
      _$_LoadInProgress;
  const _LoadInProgress._() : super._();

  @override
  Fresh<List<Product>> get products;
  int get itemsPerPage;
  @override
  @JsonKey(ignore: true)
  _$$_LoadInProgressCopyWith<_$_LoadInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<Product>> products, bool isNextPageAvailable});

  @override
  $FreshCopyWith<List<Product>, $Res> get products;
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? isNextPageAvailable = null,
  }) {
    return _then(_$_LoadSuccess(
      null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Product>>,
      isNextPageAvailable: null == isNextPageAvailable
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess extends _LoadSuccess {
  const _$_LoadSuccess(this.products, {required this.isNextPageAvailable})
      : super._();

  @override
  final Fresh<List<Product>> products;
  @override
  final bool isNextPageAvailable;

  @override
  String toString() {
    return 'HomePageState.loadSuccess(products: $products, isNextPageAvailable: $isNextPageAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            (identical(other.products, products) ||
                other.products == products) &&
            (identical(other.isNextPageAvailable, isNextPageAvailable) ||
                other.isNextPageAvailable == isNextPageAvailable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, products, isNextPageAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Product>> products) initial,
    required TResult Function(Fresh<List<Product>> products, int itemsPerPage)
        loadInProgress,
    required TResult Function(
            Fresh<List<Product>> products, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(
            Fresh<List<Product>> products, ProductFailure failure)
        loadFailure,
  }) {
    return loadSuccess(products, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<Product>> products)? initial,
    TResult? Function(Fresh<List<Product>> products, int itemsPerPage)?
        loadInProgress,
    TResult? Function(Fresh<List<Product>> products, bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(Fresh<List<Product>> products, ProductFailure failure)?
        loadFailure,
  }) {
    return loadSuccess?.call(products, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Product>> products)? initial,
    TResult Function(Fresh<List<Product>> products, int itemsPerPage)?
        loadInProgress,
    TResult Function(Fresh<List<Product>> products, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<Product>> products, ProductFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(products, isNextPageAvailable);
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

abstract class _LoadSuccess extends HomePageState {
  const factory _LoadSuccess(final Fresh<List<Product>> products,
      {required final bool isNextPageAvailable}) = _$_LoadSuccess;
  const _LoadSuccess._() : super._();

  @override
  Fresh<List<Product>> get products;
  bool get isNextPageAvailable;
  @override
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<Product>> products, ProductFailure failure});

  @override
  $FreshCopyWith<List<Product>, $Res> get products;
  $ProductFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? failure = null,
  }) {
    return _then(_$_LoadFailure(
      null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Product>>,
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ProductFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductFailureCopyWith<$Res> get failure {
    return $ProductFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure extends _LoadFailure {
  const _$_LoadFailure(this.products, this.failure) : super._();

  @override
  final Fresh<List<Product>> products;
  @override
  final ProductFailure failure;

  @override
  String toString() {
    return 'HomePageState.loadFailure(products: $products, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.products, products) ||
                other.products == products) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, products, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Product>> products) initial,
    required TResult Function(Fresh<List<Product>> products, int itemsPerPage)
        loadInProgress,
    required TResult Function(
            Fresh<List<Product>> products, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(
            Fresh<List<Product>> products, ProductFailure failure)
        loadFailure,
  }) {
    return loadFailure(products, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<Product>> products)? initial,
    TResult? Function(Fresh<List<Product>> products, int itemsPerPage)?
        loadInProgress,
    TResult? Function(Fresh<List<Product>> products, bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(Fresh<List<Product>> products, ProductFailure failure)?
        loadFailure,
  }) {
    return loadFailure?.call(products, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Product>> products)? initial,
    TResult Function(Fresh<List<Product>> products, int itemsPerPage)?
        loadInProgress,
    TResult Function(Fresh<List<Product>> products, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<Product>> products, ProductFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(products, failure);
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

abstract class _LoadFailure extends HomePageState {
  const factory _LoadFailure(
          final Fresh<List<Product>> products, final ProductFailure failure) =
      _$_LoadFailure;
  const _LoadFailure._() : super._();

  @override
  Fresh<List<Product>> get products;
  ProductFailure get failure;
  @override
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
