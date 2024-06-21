import 'dart:convert';

import 'package:classic_shop/src/features/notification/data/notification_dto.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class NotificationStorage {
  Future<NotificationDTO?> read(String userId);

  Future<void> save(NotificationDTO notificationDTO);

  Future<void> clear(String userId);
}

class SecureNotificationStorage implements NotificationStorage {
  SecureNotificationStorage(this._storage);

  final FlutterSecureStorage _storage;

  // static const _key = 'notification_info';

  // NotificationDTO? _cachedNotification;

  @override
  Future<NotificationDTO?> read(String userId) async {
    // if (_cachedNotification != null) {
    //   return _cachedNotification;
    // }
    final json = await _storage.read(key: userId);
    if (json == null || json.isEmpty) {
      return null;
    }
    try {
      return
          // _cachedNotification =
          NotificationDTO.fromJson(jsonDecode(json) as Map<String, dynamic>);
    } on FormatException {
      return null;
    }
  }

  @override
  Future<void> save(NotificationDTO notificationDTO) {
    // _cachedNotification = null;
    // _storage.delete(key: _key);
    // _cachedNotification = notificationDTO;
    return _storage.write(
      key: notificationDTO.userId.toString(),
      value: jsonEncode(notificationDTO),
    );
  }

  @override
  Future<void> clear(String userId) {
    // _cachedNotification = null;
    return _storage.delete(key: userId);
  }
}
