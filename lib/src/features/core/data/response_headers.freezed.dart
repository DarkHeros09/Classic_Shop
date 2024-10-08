// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_headers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseHeaders _$ResponseHeadersFromJson(Map<String, dynamic> json) {
  return _ResponseHeaders.fromJson(json);
}

/// @nodoc
mixin _$ResponseHeaders {
  String? get etag => throw _privateConstructorUsedError;
  bool? get nextAvailable => throw _privateConstructorUsedError;

  /// Serializes this ResponseHeaders to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseHeaders
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseHeadersCopyWith<ResponseHeaders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseHeadersCopyWith<$Res> {
  factory $ResponseHeadersCopyWith(
          ResponseHeaders value, $Res Function(ResponseHeaders) then) =
      _$ResponseHeadersCopyWithImpl<$Res, ResponseHeaders>;
  @useResult
  $Res call({String? etag, bool? nextAvailable});
}

/// @nodoc
class _$ResponseHeadersCopyWithImpl<$Res, $Val extends ResponseHeaders>
    implements $ResponseHeadersCopyWith<$Res> {
  _$ResponseHeadersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseHeaders
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? etag = freezed,
    Object? nextAvailable = freezed,
  }) {
    return _then(_value.copyWith(
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      nextAvailable: freezed == nextAvailable
          ? _value.nextAvailable
          : nextAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseHeadersImplCopyWith<$Res>
    implements $ResponseHeadersCopyWith<$Res> {
  factory _$$ResponseHeadersImplCopyWith(_$ResponseHeadersImpl value,
          $Res Function(_$ResponseHeadersImpl) then) =
      __$$ResponseHeadersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? etag, bool? nextAvailable});
}

/// @nodoc
class __$$ResponseHeadersImplCopyWithImpl<$Res>
    extends _$ResponseHeadersCopyWithImpl<$Res, _$ResponseHeadersImpl>
    implements _$$ResponseHeadersImplCopyWith<$Res> {
  __$$ResponseHeadersImplCopyWithImpl(
      _$ResponseHeadersImpl _value, $Res Function(_$ResponseHeadersImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseHeaders
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? etag = freezed,
    Object? nextAvailable = freezed,
  }) {
    return _then(_$ResponseHeadersImpl(
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      nextAvailable: freezed == nextAvailable
          ? _value.nextAvailable
          : nextAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseHeadersImpl extends _ResponseHeaders
    with DiagnosticableTreeMixin {
  const _$ResponseHeadersImpl({this.etag, this.nextAvailable}) : super._();

  factory _$ResponseHeadersImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseHeadersImplFromJson(json);

  @override
  final String? etag;
  @override
  final bool? nextAvailable;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResponseHeaders(etag: $etag, nextAvailable: $nextAvailable)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResponseHeaders'))
      ..add(DiagnosticsProperty('etag', etag))
      ..add(DiagnosticsProperty('nextAvailable', nextAvailable));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseHeadersImpl &&
            (identical(other.etag, etag) || other.etag == etag) &&
            (identical(other.nextAvailable, nextAvailable) ||
                other.nextAvailable == nextAvailable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, etag, nextAvailable);

  /// Create a copy of ResponseHeaders
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseHeadersImplCopyWith<_$ResponseHeadersImpl> get copyWith =>
      __$$ResponseHeadersImplCopyWithImpl<_$ResponseHeadersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseHeadersImplToJson(
      this,
    );
  }
}

abstract class _ResponseHeaders extends ResponseHeaders {
  const factory _ResponseHeaders(
      {final String? etag, final bool? nextAvailable}) = _$ResponseHeadersImpl;
  const _ResponseHeaders._() : super._();

  factory _ResponseHeaders.fromJson(Map<String, dynamic> json) =
      _$ResponseHeadersImpl.fromJson;

  @override
  String? get etag;
  @override
  bool? get nextAvailable;

  /// Create a copy of ResponseHeaders
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseHeadersImplCopyWith<_$ResponseHeadersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
