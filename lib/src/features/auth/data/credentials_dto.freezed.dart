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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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

  /// Serializes this CredentialsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CredentialsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of CredentialsDTO
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of CredentialsDTO
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$CredentialsDTOImplCopyWith<$Res>
    implements $CredentialsDTOCopyWith<$Res> {
  factory _$$CredentialsDTOImplCopyWith(_$CredentialsDTOImpl value,
          $Res Function(_$CredentialsDTOImpl) then) =
      __$$CredentialsDTOImplCopyWithImpl<$Res>;
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
class __$$CredentialsDTOImplCopyWithImpl<$Res>
    extends _$CredentialsDTOCopyWithImpl<$Res, _$CredentialsDTOImpl>
    implements _$$CredentialsDTOImplCopyWith<$Res> {
  __$$CredentialsDTOImplCopyWithImpl(
      _$CredentialsDTOImpl _value, $Res Function(_$CredentialsDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of CredentialsDTO
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_$CredentialsDTOImpl(
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
class _$CredentialsDTOImpl extends _CredentialsDTO
    with DiagnosticableTreeMixin {
  const _$CredentialsDTOImpl(
      {required this.user,
      required this.userSessionId,
      required this.accessToken,
      @JsonKey(name: 'access_token_expires_at') required this.accessExpiration,
      required this.refreshToken,
      @JsonKey(name: 'refresh_token_expires_at')
      required this.refreshExpiration})
      : super._();

  factory _$CredentialsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CredentialsDTOImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CredentialsDTOImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, userSessionId, accessToken,
      accessExpiration, refreshToken, refreshExpiration);

  /// Create a copy of CredentialsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CredentialsDTOImplCopyWith<_$CredentialsDTOImpl> get copyWith =>
      __$$CredentialsDTOImplCopyWithImpl<_$CredentialsDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CredentialsDTOImplToJson(
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
      required final DateTime? refreshExpiration}) = _$CredentialsDTOImpl;
  const _CredentialsDTO._() : super._();

  factory _CredentialsDTO.fromJson(Map<String, dynamic> json) =
      _$CredentialsDTOImpl.fromJson;

  @override
  UserDTO? get user; // required final TokenDTO? token,
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

  /// Create a copy of CredentialsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CredentialsDTOImplCopyWith<_$CredentialsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
