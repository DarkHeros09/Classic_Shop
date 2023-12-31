// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credentials_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CredentialsDTO _$CredentialsDTOFromJson(Map<String, dynamic> json) {
  return _CredentialsDTO.fromJson(json);
}

/// @nodoc
mixin _$CredentialsDTO {
  UserDTO? get user =>
      throw _privateConstructorUsedError; // required final TokenDTO? token,
  String get userSessionId => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token_expires_at')
  DateTime get accessExpiration => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token_expires_at')
  DateTime? get refreshExpiration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CredentialsDTOCopyWith<CredentialsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialsDTOCopyWith<$Res> {
  factory $CredentialsDTOCopyWith(
          CredentialsDTO value, $Res Function(CredentialsDTO) then) =
      _$CredentialsDTOCopyWithImpl<$Res, CredentialsDTO>;
  @useResult
  $Res call(
      {UserDTO? user,
      String userSessionId,
      String accessToken,
      @JsonKey(name: 'access_token_expires_at') DateTime accessExpiration,
      String? refreshToken,
      @JsonKey(name: 'refresh_token_expires_at') DateTime? refreshExpiration});

  $UserDTOCopyWith<$Res>? get user;
}

/// @nodoc
class _$CredentialsDTOCopyWithImpl<$Res, $Val extends CredentialsDTO>
    implements $CredentialsDTOCopyWith<$Res> {
  _$CredentialsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? userSessionId = null,
    Object? accessToken = null,
    Object? accessExpiration = null,
    Object? refreshToken = freezed,
    Object? refreshExpiration = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
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

  @override
  @pragma('vm:prefer-inline')
  $UserDTOCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDTOCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CredentialsDTOCopyWith<$Res>
    implements $CredentialsDTOCopyWith<$Res> {
  factory _$$_CredentialsDTOCopyWith(
          _$_CredentialsDTO value, $Res Function(_$_CredentialsDTO) then) =
      __$$_CredentialsDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserDTO? user,
      String userSessionId,
      String accessToken,
      @JsonKey(name: 'access_token_expires_at') DateTime accessExpiration,
      String? refreshToken,
      @JsonKey(name: 'refresh_token_expires_at') DateTime? refreshExpiration});

  @override
  $UserDTOCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_CredentialsDTOCopyWithImpl<$Res>
    extends _$CredentialsDTOCopyWithImpl<$Res, _$_CredentialsDTO>
    implements _$$_CredentialsDTOCopyWith<$Res> {
  __$$_CredentialsDTOCopyWithImpl(
      _$_CredentialsDTO _value, $Res Function(_$_CredentialsDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? userSessionId = null,
    Object? accessToken = null,
    Object? accessExpiration = null,
    Object? refreshToken = freezed,
    Object? refreshExpiration = freezed,
  }) {
    return _then(_$_CredentialsDTO(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
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
class _$_CredentialsDTO extends _CredentialsDTO with DiagnosticableTreeMixin {
  const _$_CredentialsDTO(
      {required this.user,
      required this.userSessionId,
      required this.accessToken,
      @JsonKey(name: 'access_token_expires_at') required this.accessExpiration,
      required this.refreshToken,
      @JsonKey(name: 'refresh_token_expires_at')
      required this.refreshExpiration})
      : super._();

  factory _$_CredentialsDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CredentialsDTOFromJson(json);

  @override
  final UserDTO? user;
// required final TokenDTO? token,
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CredentialsDTO(user: $user, userSessionId: $userSessionId, accessToken: $accessToken, accessExpiration: $accessExpiration, refreshToken: $refreshToken, refreshExpiration: $refreshExpiration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CredentialsDTO'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('userSessionId', userSessionId))
      ..add(DiagnosticsProperty('accessToken', accessToken))
      ..add(DiagnosticsProperty('accessExpiration', accessExpiration))
      ..add(DiagnosticsProperty('refreshToken', refreshToken))
      ..add(DiagnosticsProperty('refreshExpiration', refreshExpiration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CredentialsDTO &&
            (identical(other.user, user) || other.user == user) &&
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
  int get hashCode => Object.hash(runtimeType, user, userSessionId, accessToken,
      accessExpiration, refreshToken, refreshExpiration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CredentialsDTOCopyWith<_$_CredentialsDTO> get copyWith =>
      __$$_CredentialsDTOCopyWithImpl<_$_CredentialsDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CredentialsDTOToJson(
      this,
    );
  }
}

abstract class _CredentialsDTO extends CredentialsDTO {
  const factory _CredentialsDTO(
      {required final UserDTO? user,
      required final String userSessionId,
      required final String accessToken,
      @JsonKey(name: 'access_token_expires_at')
      required final DateTime accessExpiration,
      required final String? refreshToken,
      @JsonKey(name: 'refresh_token_expires_at')
      required final DateTime? refreshExpiration}) = _$_CredentialsDTO;
  const _CredentialsDTO._() : super._();

  factory _CredentialsDTO.fromJson(Map<String, dynamic> json) =
      _$_CredentialsDTO.fromJson;

  @override
  UserDTO? get user;
  @override // required final TokenDTO? token,
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
  _$$_CredentialsDTOCopyWith<_$_CredentialsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
