import 'package:app_set_id/app_set_id.dart';
import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:classic_shop/src/features/notification/application/notification_notifier.dart';
import 'package:classic_shop/src/features/notification/data/notification_api.dart';
import 'package:classic_shop/src/features/notification/data/notification_local_service.dart';
import 'package:classic_shop/src/features/notification/data/notification_remote_service.dart';
import 'package:classic_shop/src/features/notification/data/notification_repository.dart';
import 'package:classic_shop/src/features/notification/data/notification_storage.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final secureNotificationStorageProvider =
    Provider<SecureNotificationStorage>((ref) {
  return SecureNotificationStorage(ref.watch(flutterSecureStorageProvider));
});

final notificationLocalServiceProvider =
    Provider<NotificationLocalService>((ref) {
  return NotificationLocalService(
    ref.watch(sembastProvider),
  );
});

final notificationApiProvider =
    Provider<NotificationApi>(NotificationApi.create);

final notificationRemoteServiceProvider =
    Provider<NotificationRemoteService>((ref) {
  return NotificationRemoteService(
    ref.watch(notificationApiProvider),
    ref.watch(responseHeaderCacheProvider),
  );
});

final deviceInfoProvider =
    FutureProvider<String?>((ref) => AppSetId().getIdentifier());

final notificationRepositoryProvider = Provider<NotificationRepository>((ref) {
  return NotificationRepository(
    ref.watch(notificationLocalServiceProvider),
    ref.watch(notificationRemoteServiceProvider),
    ref.watch(userStorageProvider),
    ref.watch(responseHeaderCacheProvider),
    ref.watch(deviceInfoProvider).requireValue,
    ref.watch(secureNotificationStorageProvider),
  );
});

final notificationNotifierProvider =
    NotifierProvider<NotificationNotifier, NotificationState>(
  NotificationNotifier.new,
);

final firebaseMessagingProvider =
    Provider<FirebaseMessaging>((ref) => FirebaseMessaging.instance);
