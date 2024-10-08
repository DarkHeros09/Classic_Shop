// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_method_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeliveryMethodState {
  List<DeliveryMethod> get deliveryMethods =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DeliveryMethod> deliveryMethods) initial,
    required TResult Function(List<DeliveryMethod> deliveryMethods)
        loadInProgress,
    required TResult Function(List<DeliveryMethod> deliveryMethods) loadSuccess,
    required TResult Function(
            List<DeliveryMethod> deliveryMethods, DeliveryMethodFailure failure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DeliveryMethod> deliveryMethods)? initial,
    TResult? Function(List<DeliveryMethod> deliveryMethods)? loadInProgress,
    TResult? Function(List<DeliveryMethod> deliveryMethods)? loadSuccess,
    TResult? Function(List<DeliveryMethod> deliveryMethods,
            DeliveryMethodFailure failure)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DeliveryMethod> deliveryMethods)? initial,
    TResult Function(List<DeliveryMethod> deliveryMethods)? loadInProgress,
    TResult Function(List<DeliveryMethod> deliveryMethods)? loadSuccess,
    TResult Function(List<DeliveryMethod> deliveryMethods,
            DeliveryMethodFailure failure)?
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

  /// Create a copy of DeliveryMethodState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryMethodStateCopyWith<DeliveryMethodState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryMethodStateCopyWith<$Res> {
  factory $DeliveryMethodStateCopyWith(
          DeliveryMethodState value, $Res Function(DeliveryMethodState) then) =
      _$DeliveryMethodStateCopyWithImpl<$Res, DeliveryMethodState>;
  @useResult
  $Res call({List<DeliveryMethod> deliveryMethods});
}

/// @nodoc
class _$DeliveryMethodStateCopyWithImpl<$Res, $Val extends DeliveryMethodState>
    implements $DeliveryMethodStateCopyWith<$Res> {
  _$DeliveryMethodStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryMethodState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryMethods = null,
  }) {
    return _then(_value.copyWith(
      deliveryMethods: null == deliveryMethods
          ? _value.deliveryMethods
          : deliveryMethods // ignore: cast_nullable_to_non_nullable
              as List<DeliveryMethod>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $DeliveryMethodStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DeliveryMethod> deliveryMethods});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DeliveryMethodStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryMethodState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryMethods = null,
  }) {
    return _then(_$InitialImpl(
      null == deliveryMethods
          ? _value._deliveryMethods
          : deliveryMethods // ignore: cast_nullable_to_non_nullable
              as List<DeliveryMethod>,
    ));
  }
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl(final List<DeliveryMethod> deliveryMethods)
      : _deliveryMethods = deliveryMethods,
        super._();

  final List<DeliveryMethod> _deliveryMethods;
  @override
  List<DeliveryMethod> get deliveryMethods {
    if (_deliveryMethods is EqualUnmodifiableListView) return _deliveryMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliveryMethods);
  }

  @override
  String toString() {
    return 'DeliveryMethodState.initial(deliveryMethods: $deliveryMethods)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._deliveryMethods, _deliveryMethods));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_deliveryMethods));

  /// Create a copy of DeliveryMethodState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DeliveryMethod> deliveryMethods) initial,
    required TResult Function(List<DeliveryMethod> deliveryMethods)
        loadInProgress,
    required TResult Function(List<DeliveryMethod> deliveryMethods) loadSuccess,
    required TResult Function(
            List<DeliveryMethod> deliveryMethods, DeliveryMethodFailure failure)
        loadFailure,
  }) {
    return initial(deliveryMethods);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DeliveryMethod> deliveryMethods)? initial,
    TResult? Function(List<DeliveryMethod> deliveryMethods)? loadInProgress,
    TResult? Function(List<DeliveryMethod> deliveryMethods)? loadSuccess,
    TResult? Function(List<DeliveryMethod> deliveryMethods,
            DeliveryMethodFailure failure)?
        loadFailure,
  }) {
    return initial?.call(deliveryMethods);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DeliveryMethod> deliveryMethods)? initial,
    TResult Function(List<DeliveryMethod> deliveryMethods)? loadInProgress,
    TResult Function(List<DeliveryMethod> deliveryMethods)? loadSuccess,
    TResult Function(List<DeliveryMethod> deliveryMethods,
            DeliveryMethodFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(deliveryMethods);
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

abstract class _Initial extends DeliveryMethodState {
  const factory _Initial(final List<DeliveryMethod> deliveryMethods) =
      _$InitialImpl;
  const _Initial._() : super._();

  @override
  List<DeliveryMethod> get deliveryMethods;

  /// Create a copy of DeliveryMethodState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<$Res>
    implements $DeliveryMethodStateCopyWith<$Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl value,
          $Res Function(_$LoadInProgressImpl) then) =
      __$$LoadInProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DeliveryMethod> deliveryMethods});
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<$Res>
    extends _$DeliveryMethodStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryMethodState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryMethods = null,
  }) {
    return _then(_$LoadInProgressImpl(
      null == deliveryMethods
          ? _value._deliveryMethods
          : deliveryMethods // ignore: cast_nullable_to_non_nullable
              as List<DeliveryMethod>,
    ));
  }
}

/// @nodoc

class _$LoadInProgressImpl extends _LoadInProgress {
  const _$LoadInProgressImpl(final List<DeliveryMethod> deliveryMethods)
      : _deliveryMethods = deliveryMethods,
        super._();

  final List<DeliveryMethod> _deliveryMethods;
  @override
  List<DeliveryMethod> get deliveryMethods {
    if (_deliveryMethods is EqualUnmodifiableListView) return _deliveryMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliveryMethods);
  }

  @override
  String toString() {
    return 'DeliveryMethodState.loadInProgress(deliveryMethods: $deliveryMethods)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadInProgressImpl &&
            const DeepCollectionEquality()
                .equals(other._deliveryMethods, _deliveryMethods));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_deliveryMethods));

  /// Create a copy of DeliveryMethodState
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
    required TResult Function(List<DeliveryMethod> deliveryMethods) initial,
    required TResult Function(List<DeliveryMethod> deliveryMethods)
        loadInProgress,
    required TResult Function(List<DeliveryMethod> deliveryMethods) loadSuccess,
    required TResult Function(
            List<DeliveryMethod> deliveryMethods, DeliveryMethodFailure failure)
        loadFailure,
  }) {
    return loadInProgress(deliveryMethods);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DeliveryMethod> deliveryMethods)? initial,
    TResult? Function(List<DeliveryMethod> deliveryMethods)? loadInProgress,
    TResult? Function(List<DeliveryMethod> deliveryMethods)? loadSuccess,
    TResult? Function(List<DeliveryMethod> deliveryMethods,
            DeliveryMethodFailure failure)?
        loadFailure,
  }) {
    return loadInProgress?.call(deliveryMethods);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DeliveryMethod> deliveryMethods)? initial,
    TResult Function(List<DeliveryMethod> deliveryMethods)? loadInProgress,
    TResult Function(List<DeliveryMethod> deliveryMethods)? loadSuccess,
    TResult Function(List<DeliveryMethod> deliveryMethods,
            DeliveryMethodFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(deliveryMethods);
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

abstract class _LoadInProgress extends DeliveryMethodState {
  const factory _LoadInProgress(final List<DeliveryMethod> deliveryMethods) =
      _$LoadInProgressImpl;
  const _LoadInProgress._() : super._();

  @override
  List<DeliveryMethod> get deliveryMethods;

  /// Create a copy of DeliveryMethodState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadInProgressImplCopyWith<_$LoadInProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadSuccessImplCopyWith<$Res>
    implements $DeliveryMethodStateCopyWith<$Res> {
  factory _$$LoadSuccessImplCopyWith(
          _$LoadSuccessImpl value, $Res Function(_$LoadSuccessImpl) then) =
      __$$LoadSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DeliveryMethod> deliveryMethods});
}

/// @nodoc
class __$$LoadSuccessImplCopyWithImpl<$Res>
    extends _$DeliveryMethodStateCopyWithImpl<$Res, _$LoadSuccessImpl>
    implements _$$LoadSuccessImplCopyWith<$Res> {
  __$$LoadSuccessImplCopyWithImpl(
      _$LoadSuccessImpl _value, $Res Function(_$LoadSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryMethodState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryMethods = null,
  }) {
    return _then(_$LoadSuccessImpl(
      null == deliveryMethods
          ? _value._deliveryMethods
          : deliveryMethods // ignore: cast_nullable_to_non_nullable
              as List<DeliveryMethod>,
    ));
  }
}

/// @nodoc

class _$LoadSuccessImpl extends _LoadSuccess {
  const _$LoadSuccessImpl(final List<DeliveryMethod> deliveryMethods)
      : _deliveryMethods = deliveryMethods,
        super._();

  final List<DeliveryMethod> _deliveryMethods;
  @override
  List<DeliveryMethod> get deliveryMethods {
    if (_deliveryMethods is EqualUnmodifiableListView) return _deliveryMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliveryMethods);
  }

  @override
  String toString() {
    return 'DeliveryMethodState.loadSuccess(deliveryMethods: $deliveryMethods)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._deliveryMethods, _deliveryMethods));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_deliveryMethods));

  /// Create a copy of DeliveryMethodState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      __$$LoadSuccessImplCopyWithImpl<_$LoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DeliveryMethod> deliveryMethods) initial,
    required TResult Function(List<DeliveryMethod> deliveryMethods)
        loadInProgress,
    required TResult Function(List<DeliveryMethod> deliveryMethods) loadSuccess,
    required TResult Function(
            List<DeliveryMethod> deliveryMethods, DeliveryMethodFailure failure)
        loadFailure,
  }) {
    return loadSuccess(deliveryMethods);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DeliveryMethod> deliveryMethods)? initial,
    TResult? Function(List<DeliveryMethod> deliveryMethods)? loadInProgress,
    TResult? Function(List<DeliveryMethod> deliveryMethods)? loadSuccess,
    TResult? Function(List<DeliveryMethod> deliveryMethods,
            DeliveryMethodFailure failure)?
        loadFailure,
  }) {
    return loadSuccess?.call(deliveryMethods);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DeliveryMethod> deliveryMethods)? initial,
    TResult Function(List<DeliveryMethod> deliveryMethods)? loadInProgress,
    TResult Function(List<DeliveryMethod> deliveryMethods)? loadSuccess,
    TResult Function(List<DeliveryMethod> deliveryMethods,
            DeliveryMethodFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(deliveryMethods);
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

abstract class _LoadSuccess extends DeliveryMethodState {
  const factory _LoadSuccess(final List<DeliveryMethod> deliveryMethods) =
      _$LoadSuccessImpl;
  const _LoadSuccess._() : super._();

  @override
  List<DeliveryMethod> get deliveryMethods;

  /// Create a copy of DeliveryMethodState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailureImplCopyWith<$Res>
    implements $DeliveryMethodStateCopyWith<$Res> {
  factory _$$LoadFailureImplCopyWith(
          _$LoadFailureImpl value, $Res Function(_$LoadFailureImpl) then) =
      __$$LoadFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DeliveryMethod> deliveryMethods, DeliveryMethodFailure failure});

  $DeliveryMethodFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$LoadFailureImplCopyWithImpl<$Res>
    extends _$DeliveryMethodStateCopyWithImpl<$Res, _$LoadFailureImpl>
    implements _$$LoadFailureImplCopyWith<$Res> {
  __$$LoadFailureImplCopyWithImpl(
      _$LoadFailureImpl _value, $Res Function(_$LoadFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryMethodState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryMethods = null,
    Object? failure = null,
  }) {
    return _then(_$LoadFailureImpl(
      null == deliveryMethods
          ? _value._deliveryMethods
          : deliveryMethods // ignore: cast_nullable_to_non_nullable
              as List<DeliveryMethod>,
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as DeliveryMethodFailure,
    ));
  }

  /// Create a copy of DeliveryMethodState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryMethodFailureCopyWith<$Res> get failure {
    return $DeliveryMethodFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$LoadFailureImpl extends _LoadFailure {
  const _$LoadFailureImpl(
      final List<DeliveryMethod> deliveryMethods, this.failure)
      : _deliveryMethods = deliveryMethods,
        super._();

  final List<DeliveryMethod> _deliveryMethods;
  @override
  List<DeliveryMethod> get deliveryMethods {
    if (_deliveryMethods is EqualUnmodifiableListView) return _deliveryMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliveryMethods);
  }

  @override
  final DeliveryMethodFailure failure;

  @override
  String toString() {
    return 'DeliveryMethodState.loadFailure(deliveryMethods: $deliveryMethods, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailureImpl &&
            const DeepCollectionEquality()
                .equals(other._deliveryMethods, _deliveryMethods) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_deliveryMethods), failure);

  /// Create a copy of DeliveryMethodState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      __$$LoadFailureImplCopyWithImpl<_$LoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DeliveryMethod> deliveryMethods) initial,
    required TResult Function(List<DeliveryMethod> deliveryMethods)
        loadInProgress,
    required TResult Function(List<DeliveryMethod> deliveryMethods) loadSuccess,
    required TResult Function(
            List<DeliveryMethod> deliveryMethods, DeliveryMethodFailure failure)
        loadFailure,
  }) {
    return loadFailure(deliveryMethods, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DeliveryMethod> deliveryMethods)? initial,
    TResult? Function(List<DeliveryMethod> deliveryMethods)? loadInProgress,
    TResult? Function(List<DeliveryMethod> deliveryMethods)? loadSuccess,
    TResult? Function(List<DeliveryMethod> deliveryMethods,
            DeliveryMethodFailure failure)?
        loadFailure,
  }) {
    return loadFailure?.call(deliveryMethods, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DeliveryMethod> deliveryMethods)? initial,
    TResult Function(List<DeliveryMethod> deliveryMethods)? loadInProgress,
    TResult Function(List<DeliveryMethod> deliveryMethods)? loadSuccess,
    TResult Function(List<DeliveryMethod> deliveryMethods,
            DeliveryMethodFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(deliveryMethods, failure);
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

abstract class _LoadFailure extends DeliveryMethodState {
  const factory _LoadFailure(final List<DeliveryMethod> deliveryMethods,
      final DeliveryMethodFailure failure) = _$LoadFailureImpl;
  const _LoadFailure._() : super._();

  @override
  List<DeliveryMethod> get deliveryMethods;
  DeliveryMethodFailure get failure;

  /// Create a copy of DeliveryMethodState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
