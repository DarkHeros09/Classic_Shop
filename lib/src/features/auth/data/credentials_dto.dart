import 'package:classic_shop/src/features/core/data/user_dto.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'credentials_dto.freezed.dart';
part 'credentials_dto.g.dart';

@freezed
class CredentialsDTO with _$CredentialsDTO {
  const factory CredentialsDTO({
    required final UserDTO? user,
    // required final TokenDTO? token,
    required final String userSessionId,
    required final String accessToken,
    @JsonKey(name: 'access_token_expires_at')
    required final DateTime accessExpiration,
    required final String? refreshToken,
    @JsonKey(name: 'refresh_token_expires_at')
    required final DateTime? refreshExpiration,
  }) = _CredentialsDTO;
  const CredentialsDTO._();
  factory CredentialsDTO.fromJson(Map<String, dynamic> json) =>
      _$CredentialsDTOFromJson(json);

  bool get isExpired {
    // final expiration = accessExpiration;
    debugPrint('LOCAL TIME');
    // debugPrint(DateTime.parse(accessExpiration).toLocal().toString());
    debugPrint(accessExpiration.toString());
    // debugPrint(
    //   'isExpired: ${DateTime.now().isAfter(DateTime.parse(accessExpiration).toLocal())}',
    // );
    debugPrint(
      'isExpired: ${DateTime.now().isAfter(accessExpiration)}',
    );
    // return DateTime.now().isAfter(DateTime.parse(accessExpiration).toLocal());
    return DateTime.now().isAfter(accessExpiration);
  }

  bool get canRefresh {
    final expiration = refreshExpiration;
    debugPrint('STRING TIME: $expiration');
    if (expiration != null) {
      // return DateTime.now().isBefore(DateTime.parse(expiration).toLocal());
      return DateTime.now().isBefore(expiration);
    }
    return false;
  }
}
