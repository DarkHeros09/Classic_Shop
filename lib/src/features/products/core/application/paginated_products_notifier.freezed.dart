// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_products_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaginatedProductsState {
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
  $PaginatedProductsStateCopyWith<PaginatedProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedProductsStateCopyWith<$Res> {
  factory $PaginatedProductsStateCopyWith(PaginatedProductsState value,
          $Res Function(PaginatedProductsState) then) =
      _$PaginatedProductsStateCopyWithImpl<$Res, PaginatedProductsState>;
  @useResult
  $Res call({Fresh<List<Product>> products});

  $FreshCopyWith<List<Product>, $Res> get products;
}

/// @nodoc
class _$PaginatedProductsStateCopyWithImpl<$Res,
        $Val extends PaginatedProductsState>
    implements $PaginatedProductsStateCopyWith<$Res> {
  _$PaginatedProductsStateCopyWithImpl(this._value, this._then);

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
abstract class _$$InitialImplCopyWith<$Res>
    implements $PaginatedProductsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<Product>> products});

  @override
  $FreshCopyWith<List<Product>, $Res> get products;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PaginatedProductsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$InitialImpl(
      null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Product>>,
    ));
  }
}

/// @nodoc

class _$InitialImpl extends _Initial with DiagnosticableTreeMixin {
  const _$InitialImpl(this.products) : super._();

  @override
  final Fresh<List<Product>> products;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaginatedProductsState.initial(products: $products)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaginatedProductsState.initial'))
      ..add(DiagnosticsProperty('products', products));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.products, products) ||
                other.products == products));
  }

  @override
  int get hashCode => Object.hash(runtimeType, products);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

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

abstract class _Initial extends PaginatedProductsState {
  const factory _Initial(final Fresh<List<Product>> products) = _$InitialImpl;
  const _Initial._() : super._();

  @override
  Fresh<List<Product>> get products;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<$Res>
    implements $PaginatedProductsStateCopyWith<$Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl value,
          $Res Function(_$LoadInProgressImpl) then) =
      __$$LoadInProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<Product>> products, int itemsPerPage});

  @override
  $FreshCopyWith<List<Product>, $Res> get products;
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<$Res>
    extends _$PaginatedProductsStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? itemsPerPage = null,
  }) {
    return _then(_$LoadInProgressImpl(
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

class _$LoadInProgressImpl extends _LoadInProgress
    with DiagnosticableTreeMixin {
  const _$LoadInProgressImpl(this.products, this.itemsPerPage) : super._();

  @override
  final Fresh<List<Product>> products;
  @override
  final int itemsPerPage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaginatedProductsState.loadInProgress(products: $products, itemsPerPage: $itemsPerPage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'PaginatedProductsState.loadInProgress'))
      ..add(DiagnosticsProperty('products', products))
      ..add(DiagnosticsProperty('itemsPerPage', itemsPerPage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadInProgressImpl &&
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
  _$$LoadInProgressImplCopyWith<_$LoadInProgressImpl> get copyWith =>
      __$$LoadInProgressImplCopyWithImpl<_$LoadInProgressImpl>(
          this, _$identity);

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

abstract class _LoadInProgress extends PaginatedProductsState {
  const factory _LoadInProgress(
          final Fresh<List<Product>> products, final int itemsPerPage) =
      _$LoadInProgressImpl;
  const _LoadInProgress._() : super._();

  @override
  Fresh<List<Product>> get products;
  int get itemsPerPage;
  @override
  @JsonKey(ignore: true)
  _$$LoadInProgressImplCopyWith<_$LoadInProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadSuccessImplCopyWith<$Res>
    implements $PaginatedProductsStateCopyWith<$Res> {
  factory _$$LoadSuccessImplCopyWith(
          _$LoadSuccessImpl value, $Res Function(_$LoadSuccessImpl) then) =
      __$$LoadSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<Product>> products, bool isNextPageAvailable});

  @override
  $FreshCopyWith<List<Product>, $Res> get products;
}

/// @nodoc
class __$$LoadSuccessImplCopyWithImpl<$Res>
    extends _$PaginatedProductsStateCopyWithImpl<$Res, _$LoadSuccessImpl>
    implements _$$LoadSuccessImplCopyWith<$Res> {
  __$$LoadSuccessImplCopyWithImpl(
      _$LoadSuccessImpl _value, $Res Function(_$LoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? isNextPageAvailable = null,
  }) {
    return _then(_$LoadSuccessImpl(
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

class _$LoadSuccessImpl extends _LoadSuccess with DiagnosticableTreeMixin {
  const _$LoadSuccessImpl(this.products, {required this.isNextPageAvailable})
      : super._();

  @override
  final Fresh<List<Product>> products;
  @override
  final bool isNextPageAvailable;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaginatedProductsState.loadSuccess(products: $products, isNextPageAvailable: $isNextPageAvailable)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaginatedProductsState.loadSuccess'))
      ..add(DiagnosticsProperty('products', products))
      ..add(DiagnosticsProperty('isNextPageAvailable', isNextPageAvailable));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessImpl &&
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
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      __$$LoadSuccessImplCopyWithImpl<_$LoadSuccessImpl>(this, _$identity);

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

abstract class _LoadSuccess extends PaginatedProductsState {
  const factory _LoadSuccess(final Fresh<List<Product>> products,
      {required final bool isNextPageAvailable}) = _$LoadSuccessImpl;
  const _LoadSuccess._() : super._();

  @override
  Fresh<List<Product>> get products;
  bool get isNextPageAvailable;
  @override
  @JsonKey(ignore: true)
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailureImplCopyWith<$Res>
    implements $PaginatedProductsStateCopyWith<$Res> {
  factory _$$LoadFailureImplCopyWith(
          _$LoadFailureImpl value, $Res Function(_$LoadFailureImpl) then) =
      __$$LoadFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<Product>> products, ProductFailure failure});

  @override
  $FreshCopyWith<List<Product>, $Res> get products;
  $ProductFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$LoadFailureImplCopyWithImpl<$Res>
    extends _$PaginatedProductsStateCopyWithImpl<$Res, _$LoadFailureImpl>
    implements _$$LoadFailureImplCopyWith<$Res> {
  __$$LoadFailureImplCopyWithImpl(
      _$LoadFailureImpl _value, $Res Function(_$LoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? failure = null,
  }) {
    return _then(_$LoadFailureImpl(
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

class _$LoadFailureImpl extends _LoadFailure with DiagnosticableTreeMixin {
  const _$LoadFailureImpl(this.products, this.failure) : super._();

  @override
  final Fresh<List<Product>> products;
  @override
  final ProductFailure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaginatedProductsState.loadFailure(products: $products, failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaginatedProductsState.loadFailure'))
      ..add(DiagnosticsProperty('products', products))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailureImpl &&
            (identical(other.products, products) ||
                other.products == products) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, products, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      __$$LoadFailureImplCopyWithImpl<_$LoadFailureImpl>(this, _$identity);

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

abstract class _LoadFailure extends PaginatedProductsState {
  const factory _LoadFailure(
          final Fresh<List<Product>> products, final ProductFailure failure) =
      _$LoadFailureImpl;
  const _LoadFailure._() : super._();

  @override
  Fresh<List<Product>> get products;
  ProductFailure get failure;
  @override
  @JsonKey(ignore: true)
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
