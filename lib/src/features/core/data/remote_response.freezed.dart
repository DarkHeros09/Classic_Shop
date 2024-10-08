// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RemoteResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() noContent,
    required TResult Function(bool nextAvailable) notModified,
    required TResult Function(T data, bool nextAvailable) withNewData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function()? noContent,
    TResult? Function(bool nextAvailable)? notModified,
    TResult? Function(T data, bool nextAvailable)? withNewData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? noContent,
    TResult Function(bool nextAvailable)? notModified,
    TResult Function(T data, bool nextAvailable)? withNewData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_NoContent<T> value) noContent,
    required TResult Function(_NotModified<T> value) notModified,
    required TResult Function(_WithNewData<T> value) withNewData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection<T> value)? noConnection,
    TResult? Function(_NoContent<T> value)? noContent,
    TResult? Function(_NotModified<T> value)? notModified,
    TResult? Function(_WithNewData<T> value)? withNewData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_NoContent<T> value)? noContent,
    TResult Function(_NotModified<T> value)? notModified,
    TResult Function(_WithNewData<T> value)? withNewData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteResponseCopyWith<T, $Res> {
  factory $RemoteResponseCopyWith(
          RemoteResponse<T> value, $Res Function(RemoteResponse<T>) then) =
      _$RemoteResponseCopyWithImpl<T, $Res, RemoteResponse<T>>;
}

/// @nodoc
class _$RemoteResponseCopyWithImpl<T, $Res, $Val extends RemoteResponse<T>>
    implements $RemoteResponseCopyWith<T, $Res> {
  _$RemoteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemoteResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NoConnectionImplCopyWith<T, $Res> {
  factory _$$NoConnectionImplCopyWith(_$NoConnectionImpl<T> value,
          $Res Function(_$NoConnectionImpl<T>) then) =
      __$$NoConnectionImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$NoConnectionImplCopyWithImpl<T, $Res>
    extends _$RemoteResponseCopyWithImpl<T, $Res, _$NoConnectionImpl<T>>
    implements _$$NoConnectionImplCopyWith<T, $Res> {
  __$$NoConnectionImplCopyWithImpl(
      _$NoConnectionImpl<T> _value, $Res Function(_$NoConnectionImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of RemoteResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoConnectionImpl<T> extends _NoConnection<T> {
  const _$NoConnectionImpl() : super._();

  @override
  String toString() {
    return 'RemoteResponse<$T>.noConnection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoConnectionImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() noContent,
    required TResult Function(bool nextAvailable) notModified,
    required TResult Function(T data, bool nextAvailable) withNewData,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function()? noContent,
    TResult? Function(bool nextAvailable)? notModified,
    TResult? Function(T data, bool nextAvailable)? withNewData,
  }) {
    return noConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? noContent,
    TResult Function(bool nextAvailable)? notModified,
    TResult Function(T data, bool nextAvailable)? withNewData,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_NoContent<T> value) noContent,
    required TResult Function(_NotModified<T> value) notModified,
    required TResult Function(_WithNewData<T> value) withNewData,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection<T> value)? noConnection,
    TResult? Function(_NoContent<T> value)? noContent,
    TResult? Function(_NotModified<T> value)? notModified,
    TResult? Function(_WithNewData<T> value)? withNewData,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_NoContent<T> value)? noContent,
    TResult Function(_NotModified<T> value)? notModified,
    TResult Function(_WithNewData<T> value)? withNewData,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnection<T> extends RemoteResponse<T> {
  const factory _NoConnection() = _$NoConnectionImpl<T>;
  const _NoConnection._() : super._();
}

/// @nodoc
abstract class _$$NoContentImplCopyWith<T, $Res> {
  factory _$$NoContentImplCopyWith(
          _$NoContentImpl<T> value, $Res Function(_$NoContentImpl<T>) then) =
      __$$NoContentImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$NoContentImplCopyWithImpl<T, $Res>
    extends _$RemoteResponseCopyWithImpl<T, $Res, _$NoContentImpl<T>>
    implements _$$NoContentImplCopyWith<T, $Res> {
  __$$NoContentImplCopyWithImpl(
      _$NoContentImpl<T> _value, $Res Function(_$NoContentImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of RemoteResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoContentImpl<T> extends _NoContent<T> {
  const _$NoContentImpl() : super._();

  @override
  String toString() {
    return 'RemoteResponse<$T>.noContent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoContentImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() noContent,
    required TResult Function(bool nextAvailable) notModified,
    required TResult Function(T data, bool nextAvailable) withNewData,
  }) {
    return noContent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function()? noContent,
    TResult? Function(bool nextAvailable)? notModified,
    TResult? Function(T data, bool nextAvailable)? withNewData,
  }) {
    return noContent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? noContent,
    TResult Function(bool nextAvailable)? notModified,
    TResult Function(T data, bool nextAvailable)? withNewData,
    required TResult orElse(),
  }) {
    if (noContent != null) {
      return noContent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_NoContent<T> value) noContent,
    required TResult Function(_NotModified<T> value) notModified,
    required TResult Function(_WithNewData<T> value) withNewData,
  }) {
    return noContent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection<T> value)? noConnection,
    TResult? Function(_NoContent<T> value)? noContent,
    TResult? Function(_NotModified<T> value)? notModified,
    TResult? Function(_WithNewData<T> value)? withNewData,
  }) {
    return noContent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_NoContent<T> value)? noContent,
    TResult Function(_NotModified<T> value)? notModified,
    TResult Function(_WithNewData<T> value)? withNewData,
    required TResult orElse(),
  }) {
    if (noContent != null) {
      return noContent(this);
    }
    return orElse();
  }
}

abstract class _NoContent<T> extends RemoteResponse<T> {
  const factory _NoContent() = _$NoContentImpl<T>;
  const _NoContent._() : super._();
}

/// @nodoc
abstract class _$$NotModifiedImplCopyWith<T, $Res> {
  factory _$$NotModifiedImplCopyWith(_$NotModifiedImpl<T> value,
          $Res Function(_$NotModifiedImpl<T>) then) =
      __$$NotModifiedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({bool nextAvailable});
}

/// @nodoc
class __$$NotModifiedImplCopyWithImpl<T, $Res>
    extends _$RemoteResponseCopyWithImpl<T, $Res, _$NotModifiedImpl<T>>
    implements _$$NotModifiedImplCopyWith<T, $Res> {
  __$$NotModifiedImplCopyWithImpl(
      _$NotModifiedImpl<T> _value, $Res Function(_$NotModifiedImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of RemoteResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextAvailable = null,
  }) {
    return _then(_$NotModifiedImpl<T>(
      nextAvailable: null == nextAvailable
          ? _value.nextAvailable
          : nextAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NotModifiedImpl<T> extends _NotModified<T> {
  const _$NotModifiedImpl({required this.nextAvailable}) : super._();

  @override
  final bool nextAvailable;

  @override
  String toString() {
    return 'RemoteResponse<$T>.notModified(nextAvailable: $nextAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotModifiedImpl<T> &&
            (identical(other.nextAvailable, nextAvailable) ||
                other.nextAvailable == nextAvailable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nextAvailable);

  /// Create a copy of RemoteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotModifiedImplCopyWith<T, _$NotModifiedImpl<T>> get copyWith =>
      __$$NotModifiedImplCopyWithImpl<T, _$NotModifiedImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() noContent,
    required TResult Function(bool nextAvailable) notModified,
    required TResult Function(T data, bool nextAvailable) withNewData,
  }) {
    return notModified(nextAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function()? noContent,
    TResult? Function(bool nextAvailable)? notModified,
    TResult? Function(T data, bool nextAvailable)? withNewData,
  }) {
    return notModified?.call(nextAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? noContent,
    TResult Function(bool nextAvailable)? notModified,
    TResult Function(T data, bool nextAvailable)? withNewData,
    required TResult orElse(),
  }) {
    if (notModified != null) {
      return notModified(nextAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_NoContent<T> value) noContent,
    required TResult Function(_NotModified<T> value) notModified,
    required TResult Function(_WithNewData<T> value) withNewData,
  }) {
    return notModified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection<T> value)? noConnection,
    TResult? Function(_NoContent<T> value)? noContent,
    TResult? Function(_NotModified<T> value)? notModified,
    TResult? Function(_WithNewData<T> value)? withNewData,
  }) {
    return notModified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_NoContent<T> value)? noContent,
    TResult Function(_NotModified<T> value)? notModified,
    TResult Function(_WithNewData<T> value)? withNewData,
    required TResult orElse(),
  }) {
    if (notModified != null) {
      return notModified(this);
    }
    return orElse();
  }
}

abstract class _NotModified<T> extends RemoteResponse<T> {
  const factory _NotModified({required final bool nextAvailable}) =
      _$NotModifiedImpl<T>;
  const _NotModified._() : super._();

  bool get nextAvailable;

  /// Create a copy of RemoteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotModifiedImplCopyWith<T, _$NotModifiedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WithNewDataImplCopyWith<T, $Res> {
  factory _$$WithNewDataImplCopyWith(_$WithNewDataImpl<T> value,
          $Res Function(_$WithNewDataImpl<T>) then) =
      __$$WithNewDataImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data, bool nextAvailable});
}

/// @nodoc
class __$$WithNewDataImplCopyWithImpl<T, $Res>
    extends _$RemoteResponseCopyWithImpl<T, $Res, _$WithNewDataImpl<T>>
    implements _$$WithNewDataImplCopyWith<T, $Res> {
  __$$WithNewDataImplCopyWithImpl(
      _$WithNewDataImpl<T> _value, $Res Function(_$WithNewDataImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of RemoteResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? nextAvailable = null,
  }) {
    return _then(_$WithNewDataImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      nextAvailable: null == nextAvailable
          ? _value.nextAvailable
          : nextAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$WithNewDataImpl<T> extends _WithNewData<T> {
  const _$WithNewDataImpl(this.data, {required this.nextAvailable}) : super._();

  @override
  final T data;
  @override
  final bool nextAvailable;

  @override
  String toString() {
    return 'RemoteResponse<$T>.withNewData(data: $data, nextAvailable: $nextAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithNewDataImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.nextAvailable, nextAvailable) ||
                other.nextAvailable == nextAvailable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), nextAvailable);

  /// Create a copy of RemoteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WithNewDataImplCopyWith<T, _$WithNewDataImpl<T>> get copyWith =>
      __$$WithNewDataImplCopyWithImpl<T, _$WithNewDataImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() noContent,
    required TResult Function(bool nextAvailable) notModified,
    required TResult Function(T data, bool nextAvailable) withNewData,
  }) {
    return withNewData(data, nextAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function()? noContent,
    TResult? Function(bool nextAvailable)? notModified,
    TResult? Function(T data, bool nextAvailable)? withNewData,
  }) {
    return withNewData?.call(data, nextAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? noContent,
    TResult Function(bool nextAvailable)? notModified,
    TResult Function(T data, bool nextAvailable)? withNewData,
    required TResult orElse(),
  }) {
    if (withNewData != null) {
      return withNewData(data, nextAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_NoContent<T> value) noContent,
    required TResult Function(_NotModified<T> value) notModified,
    required TResult Function(_WithNewData<T> value) withNewData,
  }) {
    return withNewData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection<T> value)? noConnection,
    TResult? Function(_NoContent<T> value)? noContent,
    TResult? Function(_NotModified<T> value)? notModified,
    TResult? Function(_WithNewData<T> value)? withNewData,
  }) {
    return withNewData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_NoContent<T> value)? noContent,
    TResult Function(_NotModified<T> value)? notModified,
    TResult Function(_WithNewData<T> value)? withNewData,
    required TResult orElse(),
  }) {
    if (withNewData != null) {
      return withNewData(this);
    }
    return orElse();
  }
}

abstract class _WithNewData<T> extends RemoteResponse<T> {
  const factory _WithNewData(final T data,
      {required final bool nextAvailable}) = _$WithNewDataImpl<T>;
  const _WithNewData._() : super._();

  T get data;
  bool get nextAvailable;

  /// Create a copy of RemoteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WithNewDataImplCopyWith<T, _$WithNewDataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
