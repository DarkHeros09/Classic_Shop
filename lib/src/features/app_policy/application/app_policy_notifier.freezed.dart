// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_policy_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppPolicyState {
  Fresh<AppPolicy> get appPolicy => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<AppPolicy> appPolicy) initial,
    required TResult Function(Fresh<AppPolicy> appPolicy) loadInProgress,
    required TResult Function(Fresh<AppPolicy> appPolicy) loadSuccess,
    required TResult Function(
            Fresh<AppPolicy> appPolicy, AppPolicyFailure failure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<AppPolicy> appPolicy)? initial,
    TResult? Function(Fresh<AppPolicy> appPolicy)? loadInProgress,
    TResult? Function(Fresh<AppPolicy> appPolicy)? loadSuccess,
    TResult? Function(Fresh<AppPolicy> appPolicy, AppPolicyFailure failure)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<AppPolicy> appPolicy)? initial,
    TResult Function(Fresh<AppPolicy> appPolicy)? loadInProgress,
    TResult Function(Fresh<AppPolicy> appPolicy)? loadSuccess,
    TResult Function(Fresh<AppPolicy> appPolicy, AppPolicyFailure failure)?
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

  /// Create a copy of AppPolicyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppPolicyStateCopyWith<AppPolicyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppPolicyStateCopyWith<$Res> {
  factory $AppPolicyStateCopyWith(
          AppPolicyState value, $Res Function(AppPolicyState) then) =
      _$AppPolicyStateCopyWithImpl<$Res, AppPolicyState>;
  @useResult
  $Res call({Fresh<AppPolicy> appPolicy});

  $FreshCopyWith<AppPolicy, $Res> get appPolicy;
}

/// @nodoc
class _$AppPolicyStateCopyWithImpl<$Res, $Val extends AppPolicyState>
    implements $AppPolicyStateCopyWith<$Res> {
  _$AppPolicyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppPolicyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appPolicy = null,
  }) {
    return _then(_value.copyWith(
      appPolicy: null == appPolicy
          ? _value.appPolicy
          : appPolicy // ignore: cast_nullable_to_non_nullable
              as Fresh<AppPolicy>,
    ) as $Val);
  }

  /// Create a copy of AppPolicyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FreshCopyWith<AppPolicy, $Res> get appPolicy {
    return $FreshCopyWith<AppPolicy, $Res>(_value.appPolicy, (value) {
      return _then(_value.copyWith(appPolicy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AppPolicyStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<AppPolicy> appPolicy});

  @override
  $FreshCopyWith<AppPolicy, $Res> get appPolicy;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AppPolicyStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppPolicyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appPolicy = null,
  }) {
    return _then(_$InitialImpl(
      null == appPolicy
          ? _value.appPolicy
          : appPolicy // ignore: cast_nullable_to_non_nullable
              as Fresh<AppPolicy>,
    ));
  }
}

/// @nodoc

class _$InitialImpl extends _Initial with DiagnosticableTreeMixin {
  const _$InitialImpl(this.appPolicy) : super._();

  @override
  final Fresh<AppPolicy> appPolicy;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppPolicyState.initial(appPolicy: $appPolicy)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppPolicyState.initial'))
      ..add(DiagnosticsProperty('appPolicy', appPolicy));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.appPolicy, appPolicy) ||
                other.appPolicy == appPolicy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appPolicy);

  /// Create a copy of AppPolicyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<AppPolicy> appPolicy) initial,
    required TResult Function(Fresh<AppPolicy> appPolicy) loadInProgress,
    required TResult Function(Fresh<AppPolicy> appPolicy) loadSuccess,
    required TResult Function(
            Fresh<AppPolicy> appPolicy, AppPolicyFailure failure)
        loadFailure,
  }) {
    return initial(appPolicy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<AppPolicy> appPolicy)? initial,
    TResult? Function(Fresh<AppPolicy> appPolicy)? loadInProgress,
    TResult? Function(Fresh<AppPolicy> appPolicy)? loadSuccess,
    TResult? Function(Fresh<AppPolicy> appPolicy, AppPolicyFailure failure)?
        loadFailure,
  }) {
    return initial?.call(appPolicy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<AppPolicy> appPolicy)? initial,
    TResult Function(Fresh<AppPolicy> appPolicy)? loadInProgress,
    TResult Function(Fresh<AppPolicy> appPolicy)? loadSuccess,
    TResult Function(Fresh<AppPolicy> appPolicy, AppPolicyFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(appPolicy);
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

abstract class _Initial extends AppPolicyState {
  const factory _Initial(final Fresh<AppPolicy> appPolicy) = _$InitialImpl;
  const _Initial._() : super._();

  @override
  Fresh<AppPolicy> get appPolicy;

  /// Create a copy of AppPolicyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<$Res>
    implements $AppPolicyStateCopyWith<$Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl value,
          $Res Function(_$LoadInProgressImpl) then) =
      __$$LoadInProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<AppPolicy> appPolicy});

  @override
  $FreshCopyWith<AppPolicy, $Res> get appPolicy;
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<$Res>
    extends _$AppPolicyStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppPolicyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appPolicy = null,
  }) {
    return _then(_$LoadInProgressImpl(
      null == appPolicy
          ? _value.appPolicy
          : appPolicy // ignore: cast_nullable_to_non_nullable
              as Fresh<AppPolicy>,
    ));
  }
}

/// @nodoc

class _$LoadInProgressImpl extends _LoadInProgress
    with DiagnosticableTreeMixin {
  const _$LoadInProgressImpl(this.appPolicy) : super._();

  @override
  final Fresh<AppPolicy> appPolicy;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppPolicyState.loadInProgress(appPolicy: $appPolicy)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppPolicyState.loadInProgress'))
      ..add(DiagnosticsProperty('appPolicy', appPolicy));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadInProgressImpl &&
            (identical(other.appPolicy, appPolicy) ||
                other.appPolicy == appPolicy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appPolicy);

  /// Create a copy of AppPolicyState
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
    required TResult Function(Fresh<AppPolicy> appPolicy) initial,
    required TResult Function(Fresh<AppPolicy> appPolicy) loadInProgress,
    required TResult Function(Fresh<AppPolicy> appPolicy) loadSuccess,
    required TResult Function(
            Fresh<AppPolicy> appPolicy, AppPolicyFailure failure)
        loadFailure,
  }) {
    return loadInProgress(appPolicy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<AppPolicy> appPolicy)? initial,
    TResult? Function(Fresh<AppPolicy> appPolicy)? loadInProgress,
    TResult? Function(Fresh<AppPolicy> appPolicy)? loadSuccess,
    TResult? Function(Fresh<AppPolicy> appPolicy, AppPolicyFailure failure)?
        loadFailure,
  }) {
    return loadInProgress?.call(appPolicy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<AppPolicy> appPolicy)? initial,
    TResult Function(Fresh<AppPolicy> appPolicy)? loadInProgress,
    TResult Function(Fresh<AppPolicy> appPolicy)? loadSuccess,
    TResult Function(Fresh<AppPolicy> appPolicy, AppPolicyFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(appPolicy);
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

abstract class _LoadInProgress extends AppPolicyState {
  const factory _LoadInProgress(final Fresh<AppPolicy> appPolicy) =
      _$LoadInProgressImpl;
  const _LoadInProgress._() : super._();

  @override
  Fresh<AppPolicy> get appPolicy;

  /// Create a copy of AppPolicyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadInProgressImplCopyWith<_$LoadInProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadSuccessImplCopyWith<$Res>
    implements $AppPolicyStateCopyWith<$Res> {
  factory _$$LoadSuccessImplCopyWith(
          _$LoadSuccessImpl value, $Res Function(_$LoadSuccessImpl) then) =
      __$$LoadSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<AppPolicy> appPolicy});

  @override
  $FreshCopyWith<AppPolicy, $Res> get appPolicy;
}

/// @nodoc
class __$$LoadSuccessImplCopyWithImpl<$Res>
    extends _$AppPolicyStateCopyWithImpl<$Res, _$LoadSuccessImpl>
    implements _$$LoadSuccessImplCopyWith<$Res> {
  __$$LoadSuccessImplCopyWithImpl(
      _$LoadSuccessImpl _value, $Res Function(_$LoadSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppPolicyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appPolicy = null,
  }) {
    return _then(_$LoadSuccessImpl(
      null == appPolicy
          ? _value.appPolicy
          : appPolicy // ignore: cast_nullable_to_non_nullable
              as Fresh<AppPolicy>,
    ));
  }
}

/// @nodoc

class _$LoadSuccessImpl extends _LoadSuccess with DiagnosticableTreeMixin {
  const _$LoadSuccessImpl(this.appPolicy) : super._();

  @override
  final Fresh<AppPolicy> appPolicy;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppPolicyState.loadSuccess(appPolicy: $appPolicy)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppPolicyState.loadSuccess'))
      ..add(DiagnosticsProperty('appPolicy', appPolicy));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessImpl &&
            (identical(other.appPolicy, appPolicy) ||
                other.appPolicy == appPolicy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appPolicy);

  /// Create a copy of AppPolicyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      __$$LoadSuccessImplCopyWithImpl<_$LoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<AppPolicy> appPolicy) initial,
    required TResult Function(Fresh<AppPolicy> appPolicy) loadInProgress,
    required TResult Function(Fresh<AppPolicy> appPolicy) loadSuccess,
    required TResult Function(
            Fresh<AppPolicy> appPolicy, AppPolicyFailure failure)
        loadFailure,
  }) {
    return loadSuccess(appPolicy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<AppPolicy> appPolicy)? initial,
    TResult? Function(Fresh<AppPolicy> appPolicy)? loadInProgress,
    TResult? Function(Fresh<AppPolicy> appPolicy)? loadSuccess,
    TResult? Function(Fresh<AppPolicy> appPolicy, AppPolicyFailure failure)?
        loadFailure,
  }) {
    return loadSuccess?.call(appPolicy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<AppPolicy> appPolicy)? initial,
    TResult Function(Fresh<AppPolicy> appPolicy)? loadInProgress,
    TResult Function(Fresh<AppPolicy> appPolicy)? loadSuccess,
    TResult Function(Fresh<AppPolicy> appPolicy, AppPolicyFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(appPolicy);
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

abstract class _LoadSuccess extends AppPolicyState {
  const factory _LoadSuccess(final Fresh<AppPolicy> appPolicy) =
      _$LoadSuccessImpl;
  const _LoadSuccess._() : super._();

  @override
  Fresh<AppPolicy> get appPolicy;

  /// Create a copy of AppPolicyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailureImplCopyWith<$Res>
    implements $AppPolicyStateCopyWith<$Res> {
  factory _$$LoadFailureImplCopyWith(
          _$LoadFailureImpl value, $Res Function(_$LoadFailureImpl) then) =
      __$$LoadFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<AppPolicy> appPolicy, AppPolicyFailure failure});

  @override
  $FreshCopyWith<AppPolicy, $Res> get appPolicy;
  $AppPolicyFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$LoadFailureImplCopyWithImpl<$Res>
    extends _$AppPolicyStateCopyWithImpl<$Res, _$LoadFailureImpl>
    implements _$$LoadFailureImplCopyWith<$Res> {
  __$$LoadFailureImplCopyWithImpl(
      _$LoadFailureImpl _value, $Res Function(_$LoadFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppPolicyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appPolicy = null,
    Object? failure = null,
  }) {
    return _then(_$LoadFailureImpl(
      null == appPolicy
          ? _value.appPolicy
          : appPolicy // ignore: cast_nullable_to_non_nullable
              as Fresh<AppPolicy>,
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppPolicyFailure,
    ));
  }

  /// Create a copy of AppPolicyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppPolicyFailureCopyWith<$Res> get failure {
    return $AppPolicyFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$LoadFailureImpl extends _LoadFailure with DiagnosticableTreeMixin {
  const _$LoadFailureImpl(this.appPolicy, this.failure) : super._();

  @override
  final Fresh<AppPolicy> appPolicy;
  @override
  final AppPolicyFailure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppPolicyState.loadFailure(appPolicy: $appPolicy, failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppPolicyState.loadFailure'))
      ..add(DiagnosticsProperty('appPolicy', appPolicy))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailureImpl &&
            (identical(other.appPolicy, appPolicy) ||
                other.appPolicy == appPolicy) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appPolicy, failure);

  /// Create a copy of AppPolicyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      __$$LoadFailureImplCopyWithImpl<_$LoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<AppPolicy> appPolicy) initial,
    required TResult Function(Fresh<AppPolicy> appPolicy) loadInProgress,
    required TResult Function(Fresh<AppPolicy> appPolicy) loadSuccess,
    required TResult Function(
            Fresh<AppPolicy> appPolicy, AppPolicyFailure failure)
        loadFailure,
  }) {
    return loadFailure(appPolicy, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<AppPolicy> appPolicy)? initial,
    TResult? Function(Fresh<AppPolicy> appPolicy)? loadInProgress,
    TResult? Function(Fresh<AppPolicy> appPolicy)? loadSuccess,
    TResult? Function(Fresh<AppPolicy> appPolicy, AppPolicyFailure failure)?
        loadFailure,
  }) {
    return loadFailure?.call(appPolicy, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<AppPolicy> appPolicy)? initial,
    TResult Function(Fresh<AppPolicy> appPolicy)? loadInProgress,
    TResult Function(Fresh<AppPolicy> appPolicy)? loadSuccess,
    TResult Function(Fresh<AppPolicy> appPolicy, AppPolicyFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(appPolicy, failure);
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

abstract class _LoadFailure extends AppPolicyState {
  const factory _LoadFailure(
          final Fresh<AppPolicy> appPolicy, final AppPolicyFailure failure) =
      _$LoadFailureImpl;
  const _LoadFailure._() : super._();

  @override
  Fresh<AppPolicy> get appPolicy;
  AppPolicyFailure get failure;

  /// Create a copy of AppPolicyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
