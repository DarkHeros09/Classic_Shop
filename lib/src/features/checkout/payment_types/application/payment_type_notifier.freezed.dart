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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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

  @JsonKey(ignore: true)
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
abstract class _$$_InitialCopyWith<$Res>
    implements $PaymentTypeStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PaymentType> paymentTypes});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PaymentTypeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentTypes = null,
  }) {
    return _then(_$_Initial(
      null == paymentTypes
          ? _value._paymentTypes
          : paymentTypes // ignore: cast_nullable_to_non_nullable
              as List<PaymentType>,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial with DiagnosticableTreeMixin {
  const _$_Initial(final List<PaymentType> paymentTypes)
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._paymentTypes, _paymentTypes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_paymentTypes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

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
  const factory _Initial(final List<PaymentType> paymentTypes) = _$_Initial;
  const _Initial._() : super._();

  @override
  List<PaymentType> get paymentTypes;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res>
    implements $PaymentTypeStateCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PaymentType> paymentTypes});
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$PaymentTypeStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentTypes = null,
  }) {
    return _then(_$_LoadInProgress(
      null == paymentTypes
          ? _value._paymentTypes
          : paymentTypes // ignore: cast_nullable_to_non_nullable
              as List<PaymentType>,
    ));
  }
}

/// @nodoc

class _$_LoadInProgress extends _LoadInProgress with DiagnosticableTreeMixin {
  const _$_LoadInProgress(final List<PaymentType> paymentTypes)
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadInProgress &&
            const DeepCollectionEquality()
                .equals(other._paymentTypes, _paymentTypes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_paymentTypes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadInProgressCopyWith<_$_LoadInProgress> get copyWith =>
      __$$_LoadInProgressCopyWithImpl<_$_LoadInProgress>(this, _$identity);

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
      _$_LoadInProgress;
  const _LoadInProgress._() : super._();

  @override
  List<PaymentType> get paymentTypes;
  @override
  @JsonKey(ignore: true)
  _$$_LoadInProgressCopyWith<_$_LoadInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res>
    implements $PaymentTypeStateCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PaymentType> paymentTypes});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$PaymentTypeStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentTypes = null,
  }) {
    return _then(_$_LoadSuccess(
      null == paymentTypes
          ? _value._paymentTypes
          : paymentTypes // ignore: cast_nullable_to_non_nullable
              as List<PaymentType>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess extends _LoadSuccess with DiagnosticableTreeMixin {
  const _$_LoadSuccess(final List<PaymentType> paymentTypes)
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality()
                .equals(other._paymentTypes, _paymentTypes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_paymentTypes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

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
      _$_LoadSuccess;
  const _LoadSuccess._() : super._();

  @override
  List<PaymentType> get paymentTypes;
  @override
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res>
    implements $PaymentTypeStateCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PaymentType> paymentTypes, PaymentTypeFailure failure});

  $PaymentTypeFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$PaymentTypeStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentTypes = null,
    Object? failure = null,
  }) {
    return _then(_$_LoadFailure(
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

  @override
  @pragma('vm:prefer-inline')
  $PaymentTypeFailureCopyWith<$Res> get failure {
    return $PaymentTypeFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure extends _LoadFailure with DiagnosticableTreeMixin {
  const _$_LoadFailure(final List<PaymentType> paymentTypes, this.failure)
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            const DeepCollectionEquality()
                .equals(other._paymentTypes, _paymentTypes) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_paymentTypes), failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

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
      final PaymentTypeFailure failure) = _$_LoadFailure;
  const _LoadFailure._() : super._();

  @override
  List<PaymentType> get paymentTypes;
  PaymentTypeFailure get failure;
  @override
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
