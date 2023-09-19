// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_banner_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TextBannerState {
  Fresh<List<TextBanner>> get textBanners => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<TextBanner>> textBanners) initial,
    required TResult Function(Fresh<List<TextBanner>> textBanners)
        loadInProgress,
    required TResult Function(Fresh<List<TextBanner>> textBanners) loadSuccess,
    required TResult Function(
            Fresh<List<TextBanner>> textBanners, TextBannerFailure failure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<TextBanner>> textBanners)? initial,
    TResult? Function(Fresh<List<TextBanner>> textBanners)? loadInProgress,
    TResult? Function(Fresh<List<TextBanner>> textBanners)? loadSuccess,
    TResult? Function(
            Fresh<List<TextBanner>> textBanners, TextBannerFailure failure)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<TextBanner>> textBanners)? initial,
    TResult Function(Fresh<List<TextBanner>> textBanners)? loadInProgress,
    TResult Function(Fresh<List<TextBanner>> textBanners)? loadSuccess,
    TResult Function(
            Fresh<List<TextBanner>> textBanners, TextBannerFailure failure)?
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
  $TextBannerStateCopyWith<TextBannerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextBannerStateCopyWith<$Res> {
  factory $TextBannerStateCopyWith(
          TextBannerState value, $Res Function(TextBannerState) then) =
      _$TextBannerStateCopyWithImpl<$Res, TextBannerState>;
  @useResult
  $Res call({Fresh<List<TextBanner>> textBanners});

  $FreshCopyWith<List<TextBanner>, $Res> get textBanners;
}

/// @nodoc
class _$TextBannerStateCopyWithImpl<$Res, $Val extends TextBannerState>
    implements $TextBannerStateCopyWith<$Res> {
  _$TextBannerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textBanners = null,
  }) {
    return _then(_value.copyWith(
      textBanners: null == textBanners
          ? _value.textBanners
          : textBanners // ignore: cast_nullable_to_non_nullable
              as Fresh<List<TextBanner>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FreshCopyWith<List<TextBanner>, $Res> get textBanners {
    return $FreshCopyWith<List<TextBanner>, $Res>(_value.textBanners, (value) {
      return _then(_value.copyWith(textBanners: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $TextBannerStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<TextBanner>> textBanners});

  @override
  $FreshCopyWith<List<TextBanner>, $Res> get textBanners;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TextBannerStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textBanners = null,
  }) {
    return _then(_$_Initial(
      null == textBanners
          ? _value.textBanners
          : textBanners // ignore: cast_nullable_to_non_nullable
              as Fresh<List<TextBanner>>,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(this.textBanners) : super._();

  @override
  final Fresh<List<TextBanner>> textBanners;

  @override
  String toString() {
    return 'TextBannerState.initial(textBanners: $textBanners)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.textBanners, textBanners) ||
                other.textBanners == textBanners));
  }

  @override
  int get hashCode => Object.hash(runtimeType, textBanners);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<TextBanner>> textBanners) initial,
    required TResult Function(Fresh<List<TextBanner>> textBanners)
        loadInProgress,
    required TResult Function(Fresh<List<TextBanner>> textBanners) loadSuccess,
    required TResult Function(
            Fresh<List<TextBanner>> textBanners, TextBannerFailure failure)
        loadFailure,
  }) {
    return initial(textBanners);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<TextBanner>> textBanners)? initial,
    TResult? Function(Fresh<List<TextBanner>> textBanners)? loadInProgress,
    TResult? Function(Fresh<List<TextBanner>> textBanners)? loadSuccess,
    TResult? Function(
            Fresh<List<TextBanner>> textBanners, TextBannerFailure failure)?
        loadFailure,
  }) {
    return initial?.call(textBanners);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<TextBanner>> textBanners)? initial,
    TResult Function(Fresh<List<TextBanner>> textBanners)? loadInProgress,
    TResult Function(Fresh<List<TextBanner>> textBanners)? loadSuccess,
    TResult Function(
            Fresh<List<TextBanner>> textBanners, TextBannerFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(textBanners);
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

abstract class _Initial extends TextBannerState {
  const factory _Initial(final Fresh<List<TextBanner>> textBanners) =
      _$_Initial;
  const _Initial._() : super._();

  @override
  Fresh<List<TextBanner>> get textBanners;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res>
    implements $TextBannerStateCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<TextBanner>> textBanners});

  @override
  $FreshCopyWith<List<TextBanner>, $Res> get textBanners;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$TextBannerStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textBanners = null,
  }) {
    return _then(_$_LoadInProgress(
      null == textBanners
          ? _value.textBanners
          : textBanners // ignore: cast_nullable_to_non_nullable
              as Fresh<List<TextBanner>>,
    ));
  }
}

/// @nodoc

class _$_LoadInProgress extends _LoadInProgress {
  const _$_LoadInProgress(this.textBanners) : super._();

  @override
  final Fresh<List<TextBanner>> textBanners;

  @override
  String toString() {
    return 'TextBannerState.loadInProgress(textBanners: $textBanners)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadInProgress &&
            (identical(other.textBanners, textBanners) ||
                other.textBanners == textBanners));
  }

  @override
  int get hashCode => Object.hash(runtimeType, textBanners);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadInProgressCopyWith<_$_LoadInProgress> get copyWith =>
      __$$_LoadInProgressCopyWithImpl<_$_LoadInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<TextBanner>> textBanners) initial,
    required TResult Function(Fresh<List<TextBanner>> textBanners)
        loadInProgress,
    required TResult Function(Fresh<List<TextBanner>> textBanners) loadSuccess,
    required TResult Function(
            Fresh<List<TextBanner>> textBanners, TextBannerFailure failure)
        loadFailure,
  }) {
    return loadInProgress(textBanners);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<TextBanner>> textBanners)? initial,
    TResult? Function(Fresh<List<TextBanner>> textBanners)? loadInProgress,
    TResult? Function(Fresh<List<TextBanner>> textBanners)? loadSuccess,
    TResult? Function(
            Fresh<List<TextBanner>> textBanners, TextBannerFailure failure)?
        loadFailure,
  }) {
    return loadInProgress?.call(textBanners);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<TextBanner>> textBanners)? initial,
    TResult Function(Fresh<List<TextBanner>> textBanners)? loadInProgress,
    TResult Function(Fresh<List<TextBanner>> textBanners)? loadSuccess,
    TResult Function(
            Fresh<List<TextBanner>> textBanners, TextBannerFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(textBanners);
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

abstract class _LoadInProgress extends TextBannerState {
  const factory _LoadInProgress(final Fresh<List<TextBanner>> textBanners) =
      _$_LoadInProgress;
  const _LoadInProgress._() : super._();

  @override
  Fresh<List<TextBanner>> get textBanners;
  @override
  @JsonKey(ignore: true)
  _$$_LoadInProgressCopyWith<_$_LoadInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res>
    implements $TextBannerStateCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<TextBanner>> textBanners});

  @override
  $FreshCopyWith<List<TextBanner>, $Res> get textBanners;
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$TextBannerStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textBanners = null,
  }) {
    return _then(_$_LoadSuccess(
      null == textBanners
          ? _value.textBanners
          : textBanners // ignore: cast_nullable_to_non_nullable
              as Fresh<List<TextBanner>>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess extends _LoadSuccess {
  const _$_LoadSuccess(this.textBanners) : super._();

  @override
  final Fresh<List<TextBanner>> textBanners;

  @override
  String toString() {
    return 'TextBannerState.loadSuccess(textBanners: $textBanners)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            (identical(other.textBanners, textBanners) ||
                other.textBanners == textBanners));
  }

  @override
  int get hashCode => Object.hash(runtimeType, textBanners);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<TextBanner>> textBanners) initial,
    required TResult Function(Fresh<List<TextBanner>> textBanners)
        loadInProgress,
    required TResult Function(Fresh<List<TextBanner>> textBanners) loadSuccess,
    required TResult Function(
            Fresh<List<TextBanner>> textBanners, TextBannerFailure failure)
        loadFailure,
  }) {
    return loadSuccess(textBanners);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<TextBanner>> textBanners)? initial,
    TResult? Function(Fresh<List<TextBanner>> textBanners)? loadInProgress,
    TResult? Function(Fresh<List<TextBanner>> textBanners)? loadSuccess,
    TResult? Function(
            Fresh<List<TextBanner>> textBanners, TextBannerFailure failure)?
        loadFailure,
  }) {
    return loadSuccess?.call(textBanners);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<TextBanner>> textBanners)? initial,
    TResult Function(Fresh<List<TextBanner>> textBanners)? loadInProgress,
    TResult Function(Fresh<List<TextBanner>> textBanners)? loadSuccess,
    TResult Function(
            Fresh<List<TextBanner>> textBanners, TextBannerFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(textBanners);
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

abstract class _LoadSuccess extends TextBannerState {
  const factory _LoadSuccess(final Fresh<List<TextBanner>> textBanners) =
      _$_LoadSuccess;
  const _LoadSuccess._() : super._();

  @override
  Fresh<List<TextBanner>> get textBanners;
  @override
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res>
    implements $TextBannerStateCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<TextBanner>> textBanners, TextBannerFailure failure});

  @override
  $FreshCopyWith<List<TextBanner>, $Res> get textBanners;
  $TextBannerFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$TextBannerStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textBanners = null,
    Object? failure = null,
  }) {
    return _then(_$_LoadFailure(
      null == textBanners
          ? _value.textBanners
          : textBanners // ignore: cast_nullable_to_non_nullable
              as Fresh<List<TextBanner>>,
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as TextBannerFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TextBannerFailureCopyWith<$Res> get failure {
    return $TextBannerFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure extends _LoadFailure {
  const _$_LoadFailure(this.textBanners, this.failure) : super._();

  @override
  final Fresh<List<TextBanner>> textBanners;
  @override
  final TextBannerFailure failure;

  @override
  String toString() {
    return 'TextBannerState.loadFailure(textBanners: $textBanners, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.textBanners, textBanners) ||
                other.textBanners == textBanners) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, textBanners, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<TextBanner>> textBanners) initial,
    required TResult Function(Fresh<List<TextBanner>> textBanners)
        loadInProgress,
    required TResult Function(Fresh<List<TextBanner>> textBanners) loadSuccess,
    required TResult Function(
            Fresh<List<TextBanner>> textBanners, TextBannerFailure failure)
        loadFailure,
  }) {
    return loadFailure(textBanners, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<TextBanner>> textBanners)? initial,
    TResult? Function(Fresh<List<TextBanner>> textBanners)? loadInProgress,
    TResult? Function(Fresh<List<TextBanner>> textBanners)? loadSuccess,
    TResult? Function(
            Fresh<List<TextBanner>> textBanners, TextBannerFailure failure)?
        loadFailure,
  }) {
    return loadFailure?.call(textBanners, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<TextBanner>> textBanners)? initial,
    TResult Function(Fresh<List<TextBanner>> textBanners)? loadInProgress,
    TResult Function(Fresh<List<TextBanner>> textBanners)? loadSuccess,
    TResult Function(
            Fresh<List<TextBanner>> textBanners, TextBannerFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(textBanners, failure);
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

abstract class _LoadFailure extends TextBannerState {
  const factory _LoadFailure(final Fresh<List<TextBanner>> textBanners,
      final TextBannerFailure failure) = _$_LoadFailure;
  const _LoadFailure._() : super._();

  @override
  Fresh<List<TextBanner>> get textBanners;
  TextBannerFailure get failure;
  @override
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
