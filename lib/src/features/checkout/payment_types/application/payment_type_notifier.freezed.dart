// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_type_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentTypeState {
  List<PaymentType> get paymentTypes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PaymentType> paymentTypes) initial,
    required TResult Function(List<PaymentType> paymentTypes) loadInProgress,
    required TResult Function(List<PaymentType> paymentTypes) loadSuccess,
    required TResult Function(
            List<PaymentType> paymentTypes, PaymentTypeFailure failure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PaymentType> paymentTypes)? initial,
    TResult? Function(List<PaymentType> paymentTypes)? loadInProgress,
    TResult? Function(List<PaymentType> paymentTypes)? loadSuccess,
    TResult? Function(
            List<PaymentType> paymentTypes, PaymentTypeFailure failure)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PaymentType> paymentTypes)? initial,
    TResult Function(List<PaymentType> paymentTypes)? loadInProgress,
    TResult Function(List<PaymentType> paymentTypes)? loadSuccess,
    TResult Function(
            List<PaymentType> paymentTypes, PaymentTypeFailure failure)?
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

  /// Create a copy of PaymentTypeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentTypeStateCopyWith<PaymentTypeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentTypeStateCopyWith<$Res> {
  factory $PaymentTypeStateCopyWith(
          PaymentTypeState value, $Res Function(PaymentTypeState) then) =
      _$PaymentTypeStateCopyWithImpl<$Res, PaymentTypeState>;
  @useResult
  $Res call({List<PaymentType> paymentTypes});
}

/// @nodoc
class _$PaymentTypeStateCopyWithImpl<$Res, $Val extends PaymentTypeState>
    implements $PaymentTypeStateCopyWith<$Res> {
  _$PaymentTypeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentTypeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentTypes = null,
  }) {
    return _then(_value.copyWith(
      paymentTypes: null == paymentTypes
          ? _value.paymentTypes
          : paymentTypes // ignore: cast_nullable_to_non_nullable
              as List<PaymentType>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $PaymentTypeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PaymentType> paymentTypes});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PaymentTypeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentTypeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentTypes = null,
  }) {
    return _then(_$InitialImpl(
      null == paymentTypes
          ? _value._paymentTypes
          : paymentTypes // ignore: cast_nullable_to_non_nullable
              as List<PaymentType>,
    ));
  }
}

/// @nodoc

class _$InitialImpl extends _Initial with DiagnosticableTreeMixin {
  const _$InitialImpl(final List<PaymentType> paymentTypes)
      : _paymentTypes = paymentTypes,
        super._();

  final List<PaymentType> _paymentTypes;
  @override
  List<PaymentType> get paymentTypes {
    if (_paymentTypes is EqualUnmodifiableListView) return _paymentTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentTypes);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentTypeState.initial(paymentTypes: $paymentTypes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentTypeState.initial'))
      ..add(DiagnosticsProperty('paymentTypes', paymentTypes));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._paymentTypes, _paymentTypes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_paymentTypes));

  /// Create a copy of PaymentTypeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PaymentType> paymentTypes) initial,
    required TResult Function(List<PaymentType> paymentTypes) loadInProgress,
    required TResult Function(List<PaymentType> paymentTypes) loadSuccess,
    required TResult Function(
            List<PaymentType> paymentTypes, PaymentTypeFailure failure)
        loadFailure,
  }) {
    return initial(paymentTypes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PaymentType> paymentTypes)? initial,
    TResult? Function(List<PaymentType> paymentTypes)? loadInProgress,
    TResult? Function(List<PaymentType> paymentTypes)? loadSuccess,
    TResult? Function(
            List<PaymentType> paymentTypes, PaymentTypeFailure failure)?
        loadFailure,
  }) {
    return initial?.call(paymentTypes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PaymentType> paymentTypes)? initial,
    TResult Function(List<PaymentType> paymentTypes)? loadInProgress,
    TResult Function(List<PaymentType> paymentTypes)? loadSuccess,
    TResult Function(
            List<PaymentType> paymentTypes, PaymentTypeFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(paymentTypes);
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

abstract class _Initial extends PaymentTypeState {
  const factory _Initial(final List<PaymentType> paymentTypes) = _$InitialImpl;
  const _Initial._() : super._();

  @override
  List<PaymentType> get paymentTypes;

  /// Create a copy of PaymentTypeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<$Res>
    implements $PaymentTypeStateCopyWith<$Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl value,
          $Res Function(_$LoadInProgressImpl) then) =
      __$$LoadInProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PaymentType> paymentTypes});
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<$Res>
    extends _$PaymentTypeStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentTypeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentTypes = null,
  }) {
    return _then(_$LoadInProgressImpl(
      null == paymentTypes
          ? _value._paymentTypes
          : paymentTypes // ignore: cast_nullable_to_non_nullable
              as List<PaymentType>,
    ));
  }
}

/// @nodoc

class _$LoadInProgressImpl extends _LoadInProgress
    with DiagnosticableTreeMixin {
  const _$LoadInProgressImpl(final List<PaymentType> paymentTypes)
      : _paymentTypes = paymentTypes,
        super._();

  final List<PaymentType> _paymentTypes;
  @override
  List<PaymentType> get paymentTypes {
    if (_paymentTypes is EqualUnmodifiableListView) return _paymentTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentTypes);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentTypeState.loadInProgress(paymentTypes: $paymentTypes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentTypeState.loadInProgress'))
      ..add(DiagnosticsProperty('paymentTypes', paymentTypes));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadInProgressImpl &&
            const DeepCollectionEquality()
                .equals(other._paymentTypes, _paymentTypes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_paymentTypes));

  /// Create a copy of PaymentTypeState
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
    required TResult Function(List<PaymentType> paymentTypes) initial,
    required TResult Function(List<PaymentType> paymentTypes) loadInProgress,
    required TResult Function(List<PaymentType> paymentTypes) loadSuccess,
    required TResult Function(
            List<PaymentType> paymentTypes, PaymentTypeFailure failure)
        loadFailure,
  }) {
    return loadInProgress(paymentTypes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PaymentType> paymentTypes)? initial,
    TResult? Function(List<PaymentType> paymentTypes)? loadInProgress,
    TResult? Function(List<PaymentType> paymentTypes)? loadSuccess,
    TResult? Function(
            List<PaymentType> paymentTypes, PaymentTypeFailure failure)?
        loadFailure,
  }) {
    return loadInProgress?.call(paymentTypes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PaymentType> paymentTypes)? initial,
    TResult Function(List<PaymentType> paymentTypes)? loadInProgress,
    TResult Function(List<PaymentType> paymentTypes)? loadSuccess,
    TResult Function(
            List<PaymentType> paymentTypes, PaymentTypeFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(paymentTypes);
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

abstract class _LoadInProgress extends PaymentTypeState {
  const factory _LoadInProgress(final List<PaymentType> paymentTypes) =
      _$LoadInProgressImpl;
  const _LoadInProgress._() : super._();

  @override
  List<PaymentType> get paymentTypes;

  /// Create a copy of PaymentTypeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadInProgressImplCopyWith<_$LoadInProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadSuccessImplCopyWith<$Res>
    implements $PaymentTypeStateCopyWith<$Res> {
  factory _$$LoadSuccessImplCopyWith(
          _$LoadSuccessImpl value, $Res Function(_$LoadSuccessImpl) then) =
      __$$LoadSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PaymentType> paymentTypes});
}

/// @nodoc
class __$$LoadSuccessImplCopyWithImpl<$Res>
    extends _$PaymentTypeStateCopyWithImpl<$Res, _$LoadSuccessImpl>
    implements _$$LoadSuccessImplCopyWith<$Res> {
  __$$LoadSuccessImplCopyWithImpl(
      _$LoadSuccessImpl _value, $Res Function(_$LoadSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentTypeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentTypes = null,
  }) {
    return _then(_$LoadSuccessImpl(
      null == paymentTypes
          ? _value._paymentTypes
          : paymentTypes // ignore: cast_nullable_to_non_nullable
              as List<PaymentType>,
    ));
  }
}

/// @nodoc

class _$LoadSuccessImpl extends _LoadSuccess with DiagnosticableTreeMixin {
  const _$LoadSuccessImpl(final List<PaymentType> paymentTypes)
      : _paymentTypes = paymentTypes,
        super._();

  final List<PaymentType> _paymentTypes;
  @override
  List<PaymentType> get paymentTypes {
    if (_paymentTypes is EqualUnmodifiableListView) return _paymentTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentTypes);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentTypeState.loadSuccess(paymentTypes: $paymentTypes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentTypeState.loadSuccess'))
      ..add(DiagnosticsProperty('paymentTypes', paymentTypes));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._paymentTypes, _paymentTypes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_paymentTypes));

  /// Create a copy of PaymentTypeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      __$$LoadSuccessImplCopyWithImpl<_$LoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PaymentType> paymentTypes) initial,
    required TResult Function(List<PaymentType> paymentTypes) loadInProgress,
    required TResult Function(List<PaymentType> paymentTypes) loadSuccess,
    required TResult Function(
            List<PaymentType> paymentTypes, PaymentTypeFailure failure)
        loadFailure,
  }) {
    return loadSuccess(paymentTypes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PaymentType> paymentTypes)? initial,
    TResult? Function(List<PaymentType> paymentTypes)? loadInProgress,
    TResult? Function(List<PaymentType> paymentTypes)? loadSuccess,
    TResult? Function(
            List<PaymentType> paymentTypes, PaymentTypeFailure failure)?
        loadFailure,
  }) {
    return loadSuccess?.call(paymentTypes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PaymentType> paymentTypes)? initial,
    TResult Function(List<PaymentType> paymentTypes)? loadInProgress,
    TResult Function(List<PaymentType> paymentTypes)? loadSuccess,
    TResult Function(
            List<PaymentType> paymentTypes, PaymentTypeFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(paymentTypes);
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

abstract class _LoadSuccess extends PaymentTypeState {
  const factory _LoadSuccess(final List<PaymentType> paymentTypes) =
      _$LoadSuccessImpl;
  const _LoadSuccess._() : super._();

  @override
  List<PaymentType> get paymentTypes;

  /// Create a copy of PaymentTypeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailureImplCopyWith<$Res>
    implements $PaymentTypeStateCopyWith<$Res> {
  factory _$$LoadFailureImplCopyWith(
          _$LoadFailureImpl value, $Res Function(_$LoadFailureImpl) then) =
      __$$LoadFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PaymentType> paymentTypes, PaymentTypeFailure failure});

  $PaymentTypeFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$LoadFailureImplCopyWithImpl<$Res>
    extends _$PaymentTypeStateCopyWithImpl<$Res, _$LoadFailureImpl>
    implements _$$LoadFailureImplCopyWith<$Res> {
  __$$LoadFailureImplCopyWithImpl(
      _$LoadFailureImpl _value, $Res Function(_$LoadFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentTypeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentTypes = null,
    Object? failure = null,
  }) {
    return _then(_$LoadFailureImpl(
      null == paymentTypes
          ? _value._paymentTypes
          : paymentTypes // ignore: cast_nullable_to_non_nullable
              as List<PaymentType>,
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as PaymentTypeFailure,
    ));
  }

  /// Create a copy of PaymentTypeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentTypeFailureCopyWith<$Res> get failure {
    return $PaymentTypeFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$LoadFailureImpl extends _LoadFailure with DiagnosticableTreeMixin {
  const _$LoadFailureImpl(final List<PaymentType> paymentTypes, this.failure)
      : _paymentTypes = paymentTypes,
        super._();

  final List<PaymentType> _paymentTypes;
  @override
  List<PaymentType> get paymentTypes {
    if (_paymentTypes is EqualUnmodifiableListView) return _paymentTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentTypes);
  }

  @override
  final PaymentTypeFailure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentTypeState.loadFailure(paymentTypes: $paymentTypes, failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentTypeState.loadFailure'))
      ..add(DiagnosticsProperty('paymentTypes', paymentTypes))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailureImpl &&
            const DeepCollectionEquality()
                .equals(other._paymentTypes, _paymentTypes) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_paymentTypes), failure);

  /// Create a copy of PaymentTypeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      __$$LoadFailureImplCopyWithImpl<_$LoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PaymentType> paymentTypes) initial,
    required TResult Function(List<PaymentType> paymentTypes) loadInProgress,
    required TResult Function(List<PaymentType> paymentTypes) loadSuccess,
    required TResult Function(
            List<PaymentType> paymentTypes, PaymentTypeFailure failure)
        loadFailure,
  }) {
    return loadFailure(paymentTypes, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PaymentType> paymentTypes)? initial,
    TResult? Function(List<PaymentType> paymentTypes)? loadInProgress,
    TResult? Function(List<PaymentType> paymentTypes)? loadSuccess,
    TResult? Function(
            List<PaymentType> paymentTypes, PaymentTypeFailure failure)?
        loadFailure,
  }) {
    return loadFailure?.call(paymentTypes, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PaymentType> paymentTypes)? initial,
    TResult Function(List<PaymentType> paymentTypes)? loadInProgress,
    TResult Function(List<PaymentType> paymentTypes)? loadSuccess,
    TResult Function(
            List<PaymentType> paymentTypes, PaymentTypeFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(paymentTypes, failure);
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

abstract class _LoadFailure extends PaymentTypeState {
  const factory _LoadFailure(final List<PaymentType> paymentTypes,
      final PaymentTypeFailure failure) = _$LoadFailureImpl;
  const _LoadFailure._() : super._();

  @override
  List<PaymentType> get paymentTypes;
  PaymentTypeFailure get failure;

  /// Create a copy of PaymentTypeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
