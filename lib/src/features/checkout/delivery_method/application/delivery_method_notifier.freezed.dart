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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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

  @JsonKey(ignore: true)
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
abstract class _$$_InitialCopyWith<$Res>
    implements $DeliveryMethodStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DeliveryMethod> deliveryMethods});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$DeliveryMethodStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryMethods = null,
  }) {
    return _then(_$_Initial(
      null == deliveryMethods
          ? _value._deliveryMethods
          : deliveryMethods // ignore: cast_nullable_to_non_nullable
              as List<DeliveryMethod>,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(final List<DeliveryMethod> deliveryMethods)
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._deliveryMethods, _deliveryMethods));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_deliveryMethods));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

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
      _$_Initial;
  const _Initial._() : super._();

  @override
  List<DeliveryMethod> get deliveryMethods;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res>
    implements $DeliveryMethodStateCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DeliveryMethod> deliveryMethods});
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$DeliveryMethodStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryMethods = null,
  }) {
    return _then(_$_LoadInProgress(
      null == deliveryMethods
          ? _value._deliveryMethods
          : deliveryMethods // ignore: cast_nullable_to_non_nullable
              as List<DeliveryMethod>,
    ));
  }
}

/// @nodoc

class _$_LoadInProgress extends _LoadInProgress {
  const _$_LoadInProgress(final List<DeliveryMethod> deliveryMethods)
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadInProgress &&
            const DeepCollectionEquality()
                .equals(other._deliveryMethods, _deliveryMethods));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_deliveryMethods));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadInProgressCopyWith<_$_LoadInProgress> get copyWith =>
      __$$_LoadInProgressCopyWithImpl<_$_LoadInProgress>(this, _$identity);

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
      _$_LoadInProgress;
  const _LoadInProgress._() : super._();

  @override
  List<DeliveryMethod> get deliveryMethods;
  @override
  @JsonKey(ignore: true)
  _$$_LoadInProgressCopyWith<_$_LoadInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res>
    implements $DeliveryMethodStateCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DeliveryMethod> deliveryMethods});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$DeliveryMethodStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryMethods = null,
  }) {
    return _then(_$_LoadSuccess(
      null == deliveryMethods
          ? _value._deliveryMethods
          : deliveryMethods // ignore: cast_nullable_to_non_nullable
              as List<DeliveryMethod>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess extends _LoadSuccess {
  const _$_LoadSuccess(final List<DeliveryMethod> deliveryMethods)
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality()
                .equals(other._deliveryMethods, _deliveryMethods));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_deliveryMethods));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

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
      _$_LoadSuccess;
  const _LoadSuccess._() : super._();

  @override
  List<DeliveryMethod> get deliveryMethods;
  @override
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res>
    implements $DeliveryMethodStateCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DeliveryMethod> deliveryMethods, DeliveryMethodFailure failure});

  $DeliveryMethodFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$DeliveryMethodStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryMethods = null,
    Object? failure = null,
  }) {
    return _then(_$_LoadFailure(
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

  @override
  @pragma('vm:prefer-inline')
  $DeliveryMethodFailureCopyWith<$Res> get failure {
    return $DeliveryMethodFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure extends _LoadFailure {
  const _$_LoadFailure(final List<DeliveryMethod> deliveryMethods, this.failure)
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            const DeepCollectionEquality()
                .equals(other._deliveryMethods, _deliveryMethods) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_deliveryMethods), failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

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
      final DeliveryMethodFailure failure) = _$_LoadFailure;
  const _LoadFailure._() : super._();

  @override
  List<DeliveryMethod> get deliveryMethods;
  DeliveryMethodFailure get failure;
  @override
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
