// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenDTO _$TokenDTOFromJson(Map<String, dynamic> json) {
  return _TokenDTO.fromJson(json);
}

/// @nodoc
mixin _$TokenDTO {
  String get userSessionId => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token_expires_at')
  DateTime get accessExpiration => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token_expires_at')
  DateTime? get refreshExpiration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenDTOCopyWith<TokenDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenDTOCopyWith<$Res> {
  factory $TokenDTOCopyWith(TokenDTO value, $Res Function(TokenDTO) then) =
      _$TokenDTOCopyWithImpl<$Res, TokenDTO>;
  @useResult
  $Res call(
      {String userSessionId,
      String accessToken,
      @JsonKey(name: 'access_token_expires_at') DateTime accessExpiration,
      String? refreshToken,
      @JsonKey(name: 'refresh_token_expires_at') DateTime? refreshExpiration});
}

/// @nodoc
class _$TokenDTOCopyWithImpl<$Res, $Val extends TokenDTO>
    implements $TokenDTOCopyWith<$Res> {
  _$TokenDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userSessionId = null,
    Object? accessToken = null,
    Object? accessExpiration = null,
    Object? refreshToken = freezed,
    Object? refreshExpiration = freezed,
  }) {
    return _then(_value.copyWith(
      userSessionId: null == userSessionId
          ? _value.userSessionId
          : userSessionId // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessExpiration: null == accessExpiration
          ? _value.accessExpiration
          : accessExpiration // ignore: cast_nullable_to_non_nullable
              as DateTime,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshExpiration: freezed == refreshExpiration
          ? _value.refreshExpiration
          : refreshExpiration // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenDTOImplCopyWith<$Res>
    implements $TokenDTOCopyWith<$Res> {
  factory _$$TokenDTOImplCopyWith(
          _$TokenDTOImpl value, $Res Function(_$TokenDTOImpl) then) =
      __$$TokenDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userSessionId,
      String accessToken,
      @JsonKey(name: 'access_token_expires_at') DateTime accessExpiration,
      String? refreshToken,
      @JsonKey(name: 'refresh_token_expires_at') DateTime? refreshExpiration});
}

/// @nodoc
class __$$TokenDTOImplCopyWithImpl<$Res>
    extends _$TokenDTOCopyWithImpl<$Res, _$TokenDTOImpl>
    implements _$$TokenDTOImplCopyWith<$Res> {
  __$$TokenDTOImplCopyWithImpl(
      _$TokenDTOImpl _value, $Res Function(_$TokenDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userSessionId = null,
    Object? accessToken = null,
    Object? accessExpiration = null,
    Object? refreshToken = freezed,
    Object? refreshExpiration = freezed,
  }) {
    return _then(_$TokenDTOImpl(
      userSessionId: null == userSessionId
          ? _value.userSessionId
          : userSessionId // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessExpiration: null == accessExpiration
          ? _value.accessExpiration
          : accessExpiration // ignore: cast_nullable_to_non_nullable
              as DateTime,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshExpiration: freezed == refreshExpiration
          ? _value.refreshExpiration
          : refreshExpiration // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenDTOImpl extends _TokenDTO {
  const _$TokenDTOImpl(
      {required this.userSessionId,
      required this.accessToken,
      @JsonKey(name: 'access_token_expires_at') required this.accessExpiration,
      required this.refreshToken,
      @JsonKey(name: 'refresh_token_expires_at')
      required this.refreshExpiration})
      : super._();

  factory _$TokenDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenDTOImplFromJson(json);

  @override
  final String userSessionId;
  @override
  final String accessToken;
  @override
  @JsonKey(name: 'access_token_expires_at')
  final DateTime accessExpiration;
  @override
  final String? refreshToken;
  @override
  @JsonKey(name: 'refresh_token_expires_at')
  final DateTime? refreshExpiration;

  @override
  String toString() {
    return 'TokenDTO(userSessionId: $userSessionId, accessToken: $accessToken, accessExpiration: $accessExpiration, refreshToken: $refreshToken, refreshExpiration: $refreshExpiration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenDTOImpl &&
            (identical(other.userSessionId, userSessionId) ||
                other.userSessionId == userSessionId) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.accessExpiration, accessExpiration) ||
                other.accessExpiration == accessExpiration) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.refreshExpiration, refreshExpiration) ||
                other.refreshExpiration == refreshExpiration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userSessionId, accessToken,
      accessExpiration, refreshToken, refreshExpiration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenDTOImplCopyWith<_$TokenDTOImpl> get copyWith =>
      __$$TokenDTOImplCopyWithImpl<_$TokenDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenDTOImplToJson(
      this,
    );
  }
}

abstract class _TokenDTO extends TokenDTO {
  const factory _TokenDTO(
      {required final String userSessionId,
      required final String accessToken,
      @JsonKey(name: 'access_token_expires_at')
      required final DateTime accessExpiration,
      required final String? refreshToken,
      @JsonKey(name: 'refresh_token_expires_at')
      required final DateTime? refreshExpiration}) = _$TokenDTOImpl;
  const _TokenDTO._() : super._();

  factory _TokenDTO.fromJson(Map<String, dynamic> json) =
      _$TokenDTOImpl.fromJson;

  @override
  String get userSessionId;
  @override
  String get accessToken;
  @override
  @JsonKey(name: 'access_token_expires_at')
  DateTime get accessExpiration;
  @override
  String? get refreshToken;
  @override
  @JsonKey(name: 'refresh_token_expires_at')
  DateTime? get refreshExpiration;
  @override
  @JsonKey(ignore: true)
  _$$TokenDTOImplCopyWith<_$TokenDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
