import 'dart:convert';

import 'package:classic_shop/src/features/auth/data/credentials_dto.dart';
import 'package:classic_shop/src/features/auth/data/token_storage/token_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureCredentialsStorage implements CredentialsStorage {
  SecureCredentialsStorage(this._storage);

  final FlutterSecureStorage _storage;

  static const _key = 'token_info';

  // CredentialsDTO? _cachedCredentials;

  @override
  Future<CredentialsDTO?> read() async {
    // if (_cachedCredentials != null) {
    //   return _cachedCredentials;
    // }
    final json = await _storage.read(key: _key);
    if (json == null || json.isEmpty) {
      return null;
    }
    try {
      return
          // _cachedCredentials =
          CredentialsDTO.fromJson(jsonDecode(json) as Map<String, dynamic>);
    } on FormatException {
      return null;
    }
  }

  @override
  Future<void> save(CredentialsDTO credentialsDTO) {
    // _cachedCredentials = null;
    // _storage.delete(key: _key);
    // _cachedCredentials = credentialsDTO;
    return _storage.write(
      key: _key,
      value: jsonEncode(credentialsDTO),
    );
  }

  @override
  Future<void> clear() {
    // _cachedCredentials = null;
    return _storage.delete(key: _key);
  }
}
