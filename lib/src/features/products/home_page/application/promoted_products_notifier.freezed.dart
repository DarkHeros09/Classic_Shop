// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promoted_products_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PromotedProductsState {
  Fresh<List<Product>> get promotedProducts =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Product>> promotedProducts) initial,
    required TResult Function(
            Fresh<List<Product>> promotedProducts, int itemsPerPage)
        loadInProgress,
    required TResult Function(
            Fresh<List<Product>> promotedProducts, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(
            Fresh<List<Product>> promotedProducts, ProductFailure failure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<Product>> promotedProducts)? initial,
    TResult? Function(Fresh<List<Product>> promotedProducts, int itemsPerPage)?
        loadInProgress,
    TResult? Function(
            Fresh<List<Product>> promotedProducts, bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(
            Fresh<List<Product>> promotedProducts, ProductFailure failure)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Product>> promotedProducts)? initial,
    TResult Function(Fresh<List<Product>> promotedProducts, int itemsPerPage)?
        loadInProgress,
    TResult Function(
            Fresh<List<Product>> promotedProducts, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(
            Fresh<List<Product>> promotedProducts, ProductFailure failure)?
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

  /// Create a copy of PromotedProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PromotedProductsStateCopyWith<PromotedProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotedProductsStateCopyWith<$Res> {
  factory $PromotedProductsStateCopyWith(PromotedProductsState value,
          $Res Function(PromotedProductsState) then) =
      _$PromotedProductsStateCopyWithImpl<$Res, PromotedProductsState>;
  @useResult
  $Res call({Fresh<List<Product>> promotedProducts});

  $FreshCopyWith<List<Product>, $Res> get promotedProducts;
}

/// @nodoc
class _$PromotedProductsStateCopyWithImpl<$Res,
        $Val extends PromotedProductsState>
    implements $PromotedProductsStateCopyWith<$Res> {
  _$PromotedProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PromotedProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotedProducts = null,
  }) {
    return _then(_value.copyWith(
      promotedProducts: null == promotedProducts
          ? _value.promotedProducts
          : promotedProducts // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Product>>,
    ) as $Val);
  }

  /// Create a copy of PromotedProductsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FreshCopyWith<List<Product>, $Res> get promotedProducts {
    return $FreshCopyWith<List<Product>, $Res>(_value.promotedProducts,
        (value) {
      return _then(_value.copyWith(promotedProducts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $PromotedProductsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<Product>> promotedProducts});

  @override
  $FreshCopyWith<List<Product>, $Res> get promotedProducts;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PromotedProductsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PromotedProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotedProducts = null,
  }) {
    return _then(_$InitialImpl(
      null == promotedProducts
          ? _value.promotedProducts
          : promotedProducts // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Product>>,
    ));
  }
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl(this.promotedProducts) : super._();

  @override
  final Fresh<List<Product>> promotedProducts;

  @override
  String toString() {
    return 'PromotedProductsState.initial(promotedProducts: $promotedProducts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.promotedProducts, promotedProducts) ||
                other.promotedProducts == promotedProducts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, promotedProducts);

  /// Create a copy of PromotedProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Product>> promotedProducts) initial,
    required TResult Function(
            Fresh<List<Product>> promotedProducts, int itemsPerPage)
        loadInProgress,
    required TResult Function(
            Fresh<List<Product>> promotedProducts, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(
            Fresh<List<Product>> promotedProducts, ProductFailure failure)
        loadFailure,
  }) {
    return initial(promotedProducts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<Product>> promotedProducts)? initial,
    TResult? Function(Fresh<List<Product>> promotedProducts, int itemsPerPage)?
        loadInProgress,
    TResult? Function(
            Fresh<List<Product>> promotedProducts, bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(
            Fresh<List<Product>> promotedProducts, ProductFailure failure)?
        loadFailure,
  }) {
    return initial?.call(promotedProducts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Product>> promotedProducts)? initial,
    TResult Function(Fresh<List<Product>> promotedProducts, int itemsPerPage)?
        loadInProgress,
    TResult Function(
            Fresh<List<Product>> promotedProducts, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(
            Fresh<List<Product>> promotedProducts, ProductFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(promotedProducts);
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

abstract class _Initial extends PromotedProductsState {
  const factory _Initial(final Fresh<List<Product>> promotedProducts) =
      _$InitialImpl;
  const _Initial._() : super._();

  @override
  Fresh<List<Product>> get promotedProducts;

  /// Create a copy of PromotedProductsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<$Res>
    implements $PromotedProductsStateCopyWith<$Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl value,
          $Res Function(_$LoadInProgressImpl) then) =
      __$$LoadInProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<Product>> promotedProducts, int itemsPerPage});

  @override
  $FreshCopyWith<List<Product>, $Res> get promotedProducts;
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<$Res>
    extends _$PromotedProductsStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of PromotedProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotedProducts = null,
    Object? itemsPerPage = null,
  }) {
    return _then(_$LoadInProgressImpl(
      null == promotedProducts
          ? _value.promotedProducts
          : promotedProducts // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Product>>,
      null == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadInProgressImpl extends _LoadInProgress {
  const _$LoadInProgressImpl(this.promotedProducts, this.itemsPerPage)
      : super._();

  @override
  final Fresh<List<Product>> promotedProducts;
  @override
  final int itemsPerPage;

  @override
  String toString() {
    return 'PromotedProductsState.loadInProgress(promotedProducts: $promotedProducts, itemsPerPage: $itemsPerPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadInProgressImpl &&
            (identical(other.promotedProducts, promotedProducts) ||
                other.promotedProducts == promotedProducts) &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                other.itemsPerPage == itemsPerPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, promotedProducts, itemsPerPage);

  /// Create a copy of PromotedProductsState
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
    required TResult Function(Fresh<List<Product>> promotedProducts) initial,
    required TResult Function(
            Fresh<List<Product>> promotedProducts, int itemsPerPage)
        loadInProgress,
    required TResult Function(
            Fresh<List<Product>> promotedProducts, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(
            Fresh<List<Product>> promotedProducts, ProductFailure failure)
        loadFailure,
  }) {
    return loadInProgress(promotedProducts, itemsPerPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<Product>> promotedProducts)? initial,
    TResult? Function(Fresh<List<Product>> promotedProducts, int itemsPerPage)?
        loadInProgress,
    TResult? Function(
            Fresh<List<Product>> promotedProducts, bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(
            Fresh<List<Product>> promotedProducts, ProductFailure failure)?
        loadFailure,
  }) {
    return loadInProgress?.call(promotedProducts, itemsPerPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Product>> promotedProducts)? initial,
    TResult Function(Fresh<List<Product>> promotedProducts, int itemsPerPage)?
        loadInProgress,
    TResult Function(
            Fresh<List<Product>> promotedProducts, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(
            Fresh<List<Product>> promotedProducts, ProductFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(promotedProducts, itemsPerPage);
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

abstract class _LoadInProgress extends PromotedProductsState {
  const factory _LoadInProgress(
          final Fresh<List<Product>> promotedProducts, final int itemsPerPage) =
      _$LoadInProgressImpl;
  const _LoadInProgress._() : super._();

  @override
  Fresh<List<Product>> get promotedProducts;
  int get itemsPerPage;

  /// Create a copy of PromotedProductsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadInProgressImplCopyWith<_$LoadInProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadSuccessImplCopyWith<$Res>
    implements $PromotedProductsStateCopyWith<$Res> {
  factory _$$LoadSuccessImplCopyWith(
          _$LoadSuccessImpl value, $Res Function(_$LoadSuccessImpl) then) =
      __$$LoadSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<Product>> promotedProducts, bool isNextPageAvailable});

  @override
  $FreshCopyWith<List<Product>, $Res> get promotedProducts;
}

/// @nodoc
class __$$LoadSuccessImplCopyWithImpl<$Res>
    extends _$PromotedProductsStateCopyWithImpl<$Res, _$LoadSuccessImpl>
    implements _$$LoadSuccessImplCopyWith<$Res> {
  __$$LoadSuccessImplCopyWithImpl(
      _$LoadSuccessImpl _value, $Res Function(_$LoadSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PromotedProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotedProducts = null,
    Object? isNextPageAvailable = null,
  }) {
    return _then(_$LoadSuccessImpl(
      null == promotedProducts
          ? _value.promotedProducts
          : promotedProducts // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Product>>,
      isNextPageAvailable: null == isNextPageAvailable
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadSuccessImpl extends _LoadSuccess {
  const _$LoadSuccessImpl(this.promotedProducts,
      {required this.isNextPageAvailable})
      : super._();

  @override
  final Fresh<List<Product>> promotedProducts;
  @override
  final bool isNextPageAvailable;

  @override
  String toString() {
    return 'PromotedProductsState.loadSuccess(promotedProducts: $promotedProducts, isNextPageAvailable: $isNextPageAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessImpl &&
            (identical(other.promotedProducts, promotedProducts) ||
                other.promotedProducts == promotedProducts) &&
            (identical(other.isNextPageAvailable, isNextPageAvailable) ||
                other.isNextPageAvailable == isNextPageAvailable));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, promotedProducts, isNextPageAvailable);

  /// Create a copy of PromotedProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      __$$LoadSuccessImplCopyWithImpl<_$LoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Product>> promotedProducts) initial,
    required TResult Function(
            Fresh<List<Product>> promotedProducts, int itemsPerPage)
        loadInProgress,
    required TResult Function(
            Fresh<List<Product>> promotedProducts, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(
            Fresh<List<Product>> promotedProducts, ProductFailure failure)
        loadFailure,
  }) {
    return loadSuccess(promotedProducts, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<Product>> promotedProducts)? initial,
    TResult? Function(Fresh<List<Product>> promotedProducts, int itemsPerPage)?
        loadInProgress,
    TResult? Function(
            Fresh<List<Product>> promotedProducts, bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(
            Fresh<List<Product>> promotedProducts, ProductFailure failure)?
        loadFailure,
  }) {
    return loadSuccess?.call(promotedProducts, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Product>> promotedProducts)? initial,
    TResult Function(Fresh<List<Product>> promotedProducts, int itemsPerPage)?
        loadInProgress,
    TResult Function(
            Fresh<List<Product>> promotedProducts, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(
            Fresh<List<Product>> promotedProducts, ProductFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(promotedProducts, isNextPageAvailable);
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

abstract class _LoadSuccess extends PromotedProductsState {
  const factory _LoadSuccess(final Fresh<List<Product>> promotedProducts,
      {required final bool isNextPageAvailable}) = _$LoadSuccessImpl;
  const _LoadSuccess._() : super._();

  @override
  Fresh<List<Product>> get promotedProducts;
  bool get isNextPageAvailable;

  /// Create a copy of PromotedProductsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailureImplCopyWith<$Res>
    implements $PromotedProductsStateCopyWith<$Res> {
  factory _$$LoadFailureImplCopyWith(
          _$LoadFailureImpl value, $Res Function(_$LoadFailureImpl) then) =
      __$$LoadFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<Product>> promotedProducts, ProductFailure failure});

  @override
  $FreshCopyWith<List<Product>, $Res> get promotedProducts;
  $ProductFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$LoadFailureImplCopyWithImpl<$Res>
    extends _$PromotedProductsStateCopyWithImpl<$Res, _$LoadFailureImpl>
    implements _$$LoadFailureImplCopyWith<$Res> {
  __$$LoadFailureImplCopyWithImpl(
      _$LoadFailureImpl _value, $Res Function(_$LoadFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of PromotedProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotedProducts = null,
    Object? failure = null,
  }) {
    return _then(_$LoadFailureImpl(
      null == promotedProducts
          ? _value.promotedProducts
          : promotedProducts // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Product>>,
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ProductFailure,
    ));
  }

  /// Create a copy of PromotedProductsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductFailureCopyWith<$Res> get failure {
    return $ProductFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$LoadFailureImpl extends _LoadFailure {
  const _$LoadFailureImpl(this.promotedProducts, this.failure) : super._();

  @override
  final Fresh<List<Product>> promotedProducts;
  @override
  final ProductFailure failure;

  @override
  String toString() {
    return 'PromotedProductsState.loadFailure(promotedProducts: $promotedProducts, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailureImpl &&
            (identical(other.promotedProducts, promotedProducts) ||
                other.promotedProducts == promotedProducts) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, promotedProducts, failure);

  /// Create a copy of PromotedProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      __$$LoadFailureImplCopyWithImpl<_$LoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Product>> promotedProducts) initial,
    required TResult Function(
            Fresh<List<Product>> promotedProducts, int itemsPerPage)
        loadInProgress,
    required TResult Function(
            Fresh<List<Product>> promotedProducts, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(
            Fresh<List<Product>> promotedProducts, ProductFailure failure)
        loadFailure,
  }) {
    return loadFailure(promotedProducts, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<Product>> promotedProducts)? initial,
    TResult? Function(Fresh<List<Product>> promotedProducts, int itemsPerPage)?
        loadInProgress,
    TResult? Function(
            Fresh<List<Product>> promotedProducts, bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(
            Fresh<List<Product>> promotedProducts, ProductFailure failure)?
        loadFailure,
  }) {
    return loadFailure?.call(promotedProducts, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Product>> promotedProducts)? initial,
    TResult Function(Fresh<List<Product>> promotedProducts, int itemsPerPage)?
        loadInProgress,
    TResult Function(
            Fresh<List<Product>> promotedProducts, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(
            Fresh<List<Product>> promotedProducts, ProductFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(promotedProducts, failure);
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

abstract class _LoadFailure extends PromotedProductsState {
  const factory _LoadFailure(final Fresh<List<Product>> promotedProducts,
      final ProductFailure failure) = _$LoadFailureImpl;
  const _LoadFailure._() : super._();

  @override
  Fresh<List<Product>> get promotedProducts;
  ProductFailure get failure;

  /// Create a copy of PromotedProductsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
