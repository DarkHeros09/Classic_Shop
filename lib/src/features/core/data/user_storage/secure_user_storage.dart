import 'dart:convert';

import 'package:classic_shop/src/features/core/data/user_dto.dart';
import 'package:classic_shop/src/features/core/data/user_storage/user_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureUserStorage implements UserStorage {
  SecureUserStorage(this._storage);

  final FlutterSecureStorage _storage;

  static const _key = 'user_info';

  // UserDTO? _cachedUser;

  @override
  Future<UserDTO?> read() async {
    // if (_cachedUser != null) {
    //   return _cachedUser;
    // }
    final json = await _storage.read(key: _key);
    if (json == null) {
      return null;
    }
    try {
      return
          // _cachedUser =
          UserDTO.fromJson(jsonDecode(json) as Map<String, dynamic>);
    } on FormatException {
      return null;
    }
  }

  @override
  Future<void> save(UserDTO user) {
    // _cachedUser = null;
    // _storage.delete(key: _key);
    // _cachedUser = user;
    return _storage.write(key: _key, value: jsonEncode(user));
  }

  @override
  Future<void> clear() {
    // _cachedUser = null;
    return _storage.delete(key: _key);
  }
}
