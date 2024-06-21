import 'package:classic_shop/gen/env.g.dart';
import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/data/response_headers_cache.dart';
import 'package:classic_shop/src/features/core/data/user_storage/user_storage.dart';
import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:classic_shop/src/features/notification/data/notification_dto.dart';
import 'package:classic_shop/src/features/notification/data/notification_local_service.dart';
import 'package:classic_shop/src/features/notification/data/notification_remote_service.dart';
import 'package:classic_shop/src/features/notification/data/notification_storage.dart';
import 'package:classic_shop/src/features/notification/domain/notification.dart';
import 'package:classic_shop/src/features/notification/domain/notification_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

class NotificationRepository {
  const NotificationRepository(
    this._localService,
    this._remoteService,
    this._userStorage,
    this._headersCache,
    this._deviceId,
    this._secureNotificationStorage,
  );

  final SecureNotificationStorage _secureNotificationStorage;
  final NotificationLocalService _localService;
  final NotificationRemoteService _remoteService;
  final ResponseHeadersCache _headersCache;
  final UserStorage _userStorage;
  final String? _deviceId;

  Future<Either<NotificationFailure, Fresh<Notification>>>
      fetchNotification() async {
    try {
      final user = await _userStorage.read();

      if (user != null && _deviceId != null) {
        final requestUri = Uri.http(
          Env.httpAddress,
          '/usr/v1/users/${user.id}/notification/$_deviceId',
        );

        final notification = await _remoteService.fetchNotification(
          userId: user.id,
          deviceId: _deviceId,
          requestUri: requestUri,
        );

        return right(
          await notification.when(
            noConnection: () async => Fresh.no(
              // await _localService.fetchNotification(user.id)
              await _secureNotificationStorage.read(user.id.toString()).then(
                    (_) =>
                        _?.toDomain() ??
                        Notification(
                          userId: user.id,
                          deviceId: _deviceId,
                          fcmToken: null,
                          createdAt: null,
                          updatedAt: null,
                        ),
                  ),
            ),
            noContent: () async {
              // await _localService.deleteNotification(user.id);
              await _secureNotificationStorage.clear(user.id.toString());
              return Fresh.no(
                Notification(
                  userId: user.id,
                  deviceId: _deviceId,
                  fcmToken: null,
                  createdAt: null,
                  updatedAt: null,
                ),
                isNextPageAvailable: false,
              );
            },
            notModified: (_) async {
              final localData =
                  // await _localService
                  //     .fetchNotification(user.id)
                  await _secureNotificationStorage
                      .read(user.id.toString())
                      .then((_) => _?.toDomain());
              if (localData == null || localData.fcmToken == null) {
                await _headersCache.deleteHeaders(requestUri);
              }
              return Fresh.yes(
                localData ??
                    Notification(
                      userId: user.id,
                      deviceId: _deviceId,
                      fcmToken: null,
                      createdAt: null,
                      updatedAt: null,
                    ),
              );
            },
            withNewData: (data, _) async {
              if (data != null) {
                // await _localService.setNotification(data);
                await _secureNotificationStorage.save(data);
              }

              return Fresh.yes(
                data?.toDomain() ??
                    Notification(
                      userId: user.id,
                      deviceId: _deviceId,
                      fcmToken: null,
                      createdAt: null,
                      updatedAt: null,
                    ),
              );
            },
          ),
        );
      }

      return right(
        Fresh.no(
          Notification(
            userId: user?.id ?? 0,
            deviceId: _deviceId,
            fcmToken: null,
            createdAt: null,
            updatedAt: null,
          ),
        ),
      );
    } on RestApiException catch (e) {
      return left(NotificationFailure.server('error code: ${e.errorCode}'));
    } on Exception catch (_) {
      rethrow;
    }
  }

  Future<Either<NotificationFailure, Unit>> createNotification({
    required String? fcmToken,
  }) async {
    final user = await _userStorage.read();

    if (user != null) {
      try {
        final notification = await _remoteService.createNotification(
          userId: user.id,
          deviceId: _deviceId,
          fcmToken: fcmToken,
        );

        return right(
          await notification.maybeWhen(
            withNewData: (data, maxPage) async {
              // await _localService.setNotification(
              await _secureNotificationStorage.save(
                NotificationDTO(
                  userId: data.userId,
                  deviceId: data.deviceId,
                  fcmToken: data.fcmToken,
                  createdAt: data.createdAt,
                  updatedAt: data.updatedAt,
                ),
              );
              return unit;
            },
            orElse: () => unit,
          ),
        );
      } on RestApiException catch (e) {
        return left(NotificationFailure.server('error code: ${e.errorCode}'));
      }
    } else {
      // await _localService.setNotification(dto);
      return right(unit);
    }
  }

  // Future<Notification?> getNotification(int productId) async {
  //   final shopNotification = await _localService.getNotification(productId);
  //   return shopNotification?.toDomain();
  // }

  Future<Either<NotificationFailure, Notification?>> updateNotification({
    required String? fcmToken,
  }) async {
    final user = await _userStorage.read();

    if (user != null) {
      try {
        final notification = await _remoteService.updateNotification(
          userId: user.id,
          deviceId: _deviceId,
          fcmToken: fcmToken,
        );

        return right(
          await notification.maybeWhen(
            withNewData: (data, maxPage) async {
              // await _localService.updateNotification(data);
              await _secureNotificationStorage.save(data);
              return data.toDomain();
            },
            orElse: () async {
              return NotificationDTO(
                userId: user.id,
                deviceId: _deviceId,
                fcmToken: null,
                createdAt: null,
                updatedAt: null,
              ).toDomain();
            },
          ),
        );
      } on RestApiException catch (e) {
        return left(NotificationFailure.server('error code: ${e.errorCode}'));
      }
    }
    // await _localService.updateNotification(dto);
    // return right(dto.toDomain());
    return right(null);
  }

  Future<bool> deleteNotification() async {
    final user = await _userStorage.read();

    if (user != null) {
      debugPrint('beingDeleted');
      final response = await _remoteService.deleteNotification(
        userId: user.id,
        deviceId: _deviceId,
      );
      return response.maybeWhen(
        withNewData: (data, maxPage) {
          debugPrint('1111c');
          // _localService.deleteNotification(user.id);
          _secureNotificationStorage.clear(user.id.toString());
          return data;
        },
        orElse: () => false,
      );
    }
    // await _localService.deleteNotification(dto.productId);
    debugPrint('FALSE');
    return false;
  }
}
