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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseHeaders _$ResponseHeadersFromJson(Map<String, dynamic> json) {
  return _ResponseHeaders.fromJson(json);
}

/// @nodoc
mixin _$ResponseHeaders {
  String? get etag => throw _privateConstructorUsedError;
  int? get maxPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseHeadersCopyWith<ResponseHeaders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseHeadersCopyWith<$Res> {
  factory $ResponseHeadersCopyWith(
          ResponseHeaders value, $Res Function(ResponseHeaders) then) =
      _$ResponseHeadersCopyWithImpl<$Res, ResponseHeaders>;
  @useResult
  $Res call({String? etag, int? maxPage});
}

/// @nodoc
class _$ResponseHeadersCopyWithImpl<$Res, $Val extends ResponseHeaders>
    implements $ResponseHeadersCopyWith<$Res> {
  _$ResponseHeadersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? etag = freezed,
    Object? maxPage = freezed,
  }) {
    return _then(_value.copyWith(
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      maxPage: freezed == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseHeadersCopyWith<$Res>
    implements $ResponseHeadersCopyWith<$Res> {
  factory _$$_ResponseHeadersCopyWith(
          _$_ResponseHeaders value, $Res Function(_$_ResponseHeaders) then) =
      __$$_ResponseHeadersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? etag, int? maxPage});
}

/// @nodoc
class __$$_ResponseHeadersCopyWithImpl<$Res>
    extends _$ResponseHeadersCopyWithImpl<$Res, _$_ResponseHeaders>
    implements _$$_ResponseHeadersCopyWith<$Res> {
  __$$_ResponseHeadersCopyWithImpl(
      _$_ResponseHeaders _value, $Res Function(_$_ResponseHeaders) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? etag = freezed,
    Object? maxPage = freezed,
  }) {
    return _then(_$_ResponseHeaders(
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      maxPage: freezed == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseHeaders extends _ResponseHeaders with DiagnosticableTreeMixin {
  const _$_ResponseHeaders({this.etag, this.maxPage}) : super._();

  factory _$_ResponseHeaders.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseHeadersFromJson(json);

  @override
  final String? etag;
  @override
  final int? maxPage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResponseHeaders(etag: $etag, maxPage: $maxPage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResponseHeaders'))
      ..add(DiagnosticsProperty('etag', etag))
      ..add(DiagnosticsProperty('maxPage', maxPage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseHeaders &&
            (identical(other.etag, etag) || other.etag == etag) &&
            (identical(other.maxPage, maxPage) || other.maxPage == maxPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, etag, maxPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseHeadersCopyWith<_$_ResponseHeaders> get copyWith =>
      __$$_ResponseHeadersCopyWithImpl<_$_ResponseHeaders>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseHeadersToJson(
      this,
    );
  }
}

abstract class _ResponseHeaders extends ResponseHeaders {
  const factory _ResponseHeaders({final String? etag, final int? maxPage}) =
      _$_ResponseHeaders;
  const _ResponseHeaders._() : super._();

  factory _ResponseHeaders.fromJson(Map<String, dynamic> json) =
      _$_ResponseHeaders.fromJson;

  @override
  String? get etag;
  @override
  int? get maxPage;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseHeadersCopyWith<_$_ResponseHeaders> get copyWith =>
      throw _privateConstructorUsedError;
}
