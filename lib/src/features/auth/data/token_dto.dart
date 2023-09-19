import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_dto.freezed.dart';
part 'token_dto.g.dart';

@freezed
class TokenDTO with _$TokenDTO {
  const factory TokenDTO({
    required final String userSessionId,
    required final String accessToken,
    @JsonKey(name: 'access_token_expires_at')
        required final DateTime accessExpiration,
    required final String? refreshToken,
    @JsonKey(name: 'refresh_token_expires_at')
        required final DateTime? refreshExpiration,
  }) = _TokenDTO;
  const TokenDTO._();

  factory TokenDTO.fromJson(Map<String, dynamic> json) =>
      _$TokenDTOFromJson(json);

  bool get isExpired {
    final expiration = accessExpiration;
    return DateTime.now().isAfter(expiration);
  }

  // bool get isRefreshExpired {
  //   final expiration = refreshExpiration;
  //   if (expiration != null) {
  //     return DateTime.now().isAfter(expiration);
  //   }
  //   return true;
  // }

  // bool get isExpired {
  //   return isAccessExpired && isRefreshExpired;
  // }

  bool get canRefresh => refreshToken != null;
}
