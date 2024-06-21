import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:classic_shop/src/features/notification/data/notification_repository.dart';
import 'package:classic_shop/src/features/notification/domain/notification.dart';
import 'package:classic_shop/src/features/notification/domain/notification_failure.dart';
import 'package:classic_shop/src/features/notification/shared/providers.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'notification_notifier.freezed.dart';

@freezed
class NotificationState with _$NotificationState {
  const NotificationState._();
  const factory NotificationState.initial(
    Fresh<Notification> notification,
  ) = _Initial;
  const factory NotificationState.loadInProgress(
    Fresh<Notification> notification,
  ) = _LoadInProgress;
  const factory NotificationState.loadSuccess(
    Fresh<Notification> notification,
  ) = _LoadSuccess;
  const factory NotificationState.loadFailure(
    Fresh<Notification> notification,
    NotificationFailure failure,
  ) = _LoadFailure;
}

class NotificationNotifier extends Notifier<NotificationState> {
  late final NotificationRepository _repository;
  late final FirebaseMessaging _firebaseMessaging;
  @override
  NotificationState build() {
    _repository = ref.watch(notificationRepositoryProvider);
    _firebaseMessaging = ref.watch(firebaseMessagingProvider);
    return state = NotificationState.initial(
      Fresh.no(
        const Notification(
          userId: 0,
          deviceId: null,
          fcmToken: null,
          createdAt: null,
          updatedAt: null,
        ),
      ),
    );
  }

  Future<void> fetchNotification() async {
    // Maybe remove in progress
    state = NotificationState.loadInProgress(state.notification);
    final notificationsOrFailure = await _repository.fetchNotification();
    state = await notificationsOrFailure.fold(
      (l) => NotificationState.loadFailure(state.notification, l),
      (r) {
        // await _repository.setNotification(r.entity);
        return NotificationState.loadSuccess(r);
      },
    );
  }

  Future<void> createNotification() async {
    state = NotificationState.loadInProgress(state.notification);
    final fcmToken = await _firebaseMessaging
        .getToken()
        .onError((error, stackTrace) => null);

    debugPrint('fcmToken: $fcmToken');

    /*final c = */ await _repository.createNotification(fcmToken: fcmToken);
    // state = NotificationState.loadSuccess(state.notification);
  }

  Future<void> updateNotification(Notification notification) async {
    state = NotificationState.loadInProgress(state.notification);
    final fcmToken = await _firebaseMessaging
        .getToken()
        .onError((error, stackTrace) => null);
    final updatedOrFailure =
        await _repository.updateNotification(fcmToken: fcmToken);

    updatedOrFailure.fold(
      (l) => null,
      (r) {
        state = NotificationState.loadSuccess(state.notification);
      },
    );
  }

  Future<void> deleteNotification() async {
    await _repository.deleteNotification();

    state = NotificationState.loadSuccess(state.notification);
  }
}
