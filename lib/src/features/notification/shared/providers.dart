import 'package:app_set_id/app_set_id.dart';
import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:classic_shop/src/features/notification/data/notification_api.dart';
import 'package:classic_shop/src/features/notification/data/notification_local_service.dart';
import 'package:classic_shop/src/features/notification/data/notification_messaging_service.dart';
import 'package:classic_shop/src/features/notification/data/notification_remote_service.dart';
import 'package:classic_shop/src/features/notification/data/notification_repository.dart';
import 'package:classic_shop/src/features/notification/data/notification_storage.dart';
import 'package:classic_shop/src/routing/app_router.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
SecureNotificationStorage secureNotificationStorage(Ref ref) {
  return SecureNotificationStorage(ref.watch(flutterSecureStorageProvider));
}

@Riverpod(keepAlive: true)
NotificationLocalService notificationLocalService(Ref ref) {
  return NotificationLocalService(
    ref.watch(sembastDatabaseProvider),
  );
}

@Riverpod(keepAlive: true)
NotificationApi notificationApi(Ref ref) {
  return NotificationApi.create(ref);
}

@Riverpod(keepAlive: true)
NotificationRemoteService notificationRemoteService(Ref ref) {
  return NotificationRemoteService(
    ref.watch(notificationApiProvider),
    ref.watch(responseHeaderCacheProvider),
  );
}

@Riverpod(keepAlive: true)
FutureOr<String?> deviceInfo(Ref ref) {
  return AppSetId().getIdentifier();
}

@Riverpod(keepAlive: true)
FirebaseMessaging firebaseMessaging(Ref ref) {
  return FirebaseMessaging.instance;
}

@Riverpod(keepAlive: true)
NotificationMessagingService notificationMessagingService(Ref ref) {
  return NotificationMessagingService(
    ref.watch(firebaseMessagingProvider),
    ref.watch(goRouterProvider),
  );
}

@Riverpod(keepAlive: true, dependencies: [])
NotificationRepository notificationRepository(Ref ref) {
  return NotificationRepository(
    // ref.watch(notificationLocalServiceProvider),
    ref.watch(notificationRemoteServiceProvider),
    ref.watch(notificationMessagingServiceProvider),
    ref.watch(userStorageProvider),
    ref.watch(responseHeaderCacheProvider),
    ref.watch(deviceInfoProvider).requireValue,
    ref.watch(secureNotificationStorageProvider),
  );
}
