import 'package:classic_shop/src/routing/app_router.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:go_router/go_router.dart';

class NotificationMessagingService {
  NotificationMessagingService(this._firebaseMessaging, this._goRouter);

  final FirebaseMessaging _firebaseMessaging;
  final GoRouter _goRouter;

  void init() {
    // final settings = await _firebaseMessaging.requestPermission();

// Handling the initial message received when the app is launched from dead
    _firebaseMessaging.getInitialMessage().then((message) {
      if (message != null) {
        _handleNotificationClick(message);
      }
    });

    // Handling a notification click event when the app is in the background
    FirebaseMessaging.onMessageOpenedApp.listen(_handleNotificationClick);
  }

  // get fcmToken
  Future<String?> getToken() async {
    final token = await _firebaseMessaging
        .getToken()
        .onError((error, stackTrace) => null);
    return token;
  }

  // Handling a notification click event by navigating to the specified screen
  void _handleNotificationClick(RemoteMessage message) {
    // final notificationData = message.data;
    final notificationData = message.notification?.body ?? '';

    // if (notificationData.containsKey('screen')) {
    final route = AppRoute.values.firstWhere(
      (element) => element.name == notificationData,
    );

    _goRouter.goNamed(route.name);
    // }
  }
}