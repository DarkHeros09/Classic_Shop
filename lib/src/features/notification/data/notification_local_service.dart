import 'package:classic_shop/src/features/core/data/sembast_database.dart';
import 'package:classic_shop/src/features/notification/data/notification_dto.dart';
import 'package:sembast/sembast.dart';

abstract class INotificationLocalService {
  Future<NotificationDTO?> fetchNotification(int userId);

  Future<void> setNotification(NotificationDTO notificationDTO);

  Future<NotificationDTO?> getNotification(int userId);

  Future<void> updateNotification(NotificationDTO dto);

  Future<void> deleteNotification(int userId);
}

class NotificationLocalService implements INotificationLocalService {
  NotificationLocalService(this._sembastDatabase);

  final SembastDatabase _sembastDatabase;

  @override
  Future<NotificationDTO?> fetchNotification(int userId) async {
    final store = intMapStoreFactory.store('$userId:userNotification');
    final records = await store.findFirst(_sembastDatabase.instance);
    if (records != null) {
      return NotificationDTO.fromJson(records.value);
    }
    return null;
  }

  @override
  Future<void> setNotification(NotificationDTO dto) {
    final store = intMapStoreFactory.store('${dto.userId}:userNotification');
    return store.record(dto.userId).put(
          _sembastDatabase.instance,
          dto.toJson(),
        );
  }

  @override
  Future<NotificationDTO?> getNotification(int userId) async {
    final store = intMapStoreFactory.store('$userId:userNotification');
    final record = await store.record(userId).get(_sembastDatabase.instance);

    if (record != null) {
      return NotificationDTO.fromJson(record);
    }
    return null;
  }

  @override
  Future<void> updateNotification(NotificationDTO dto) async {
    final store = intMapStoreFactory.store('${dto.userId}:userNotification');
    await store
        .record(dto.userId)
        .update(_sembastDatabase.instance, dto.toJson());
  }

  @override
  Future<void> deleteNotification(int userId) async {
    final store = intMapStoreFactory.store('$userId:userNotification');
    await store.record(userId).delete(_sembastDatabase.instance);
  }
}
