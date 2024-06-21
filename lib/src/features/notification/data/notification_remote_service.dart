import 'dart:io';

import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/data/remote_response.dart';
import 'package:classic_shop/src/features/core/data/response_headers.dart';
import 'package:classic_shop/src/features/core/data/response_headers_cache.dart';
import 'package:classic_shop/src/features/notification/data/notification_api.dart';
import 'package:classic_shop/src/features/notification/data/notification_dto.dart';
import 'package:flutter/foundation.dart';

abstract class INotificationRemoteService {
  Future<RemoteResponse<NotificationDTO?>> fetchNotification({
    required int userId,
    required String deviceId,
    required Uri requestUri,
  });

  Future<RemoteResponse<NotificationDTO>> createNotification({
    required int userId,
    required String deviceId,
    required String fcmToken,
  });

  Future<RemoteResponse<NotificationDTO>> updateNotification({
    required int userId,
    required String? deviceId,
    required String? fcmToken,
  });

  Future<RemoteResponse<bool>> deleteNotification({
    required int userId,
    required String deviceId,
  });
}

class NotificationRemoteService implements INotificationRemoteService {
  NotificationRemoteService(
    this._notificationApi,
    this._headersCache,
  );

  final NotificationApi _notificationApi;
  final ResponseHeadersCache _headersCache;

  @override
  Future<RemoteResponse<NotificationDTO?>> fetchNotification({
    required int userId,
    required String? deviceId,
    required Uri requestUri,
  }) async {
    final previousHeaders = await _headersCache.getHeaders(requestUri);
    try {
      final response = await _notificationApi.getNotification(
        ifNoneMatch: previousHeaders?.etag ?? '',
        userId: userId.toString(),
        deviceId: deviceId,
      );

      if (response.statusCode == 304) {
        return const RemoteResponse.notModified(
          nextAvailable: false,
        );
      }

      if (response.isSuccessful) {
        final headers = ResponseHeaders.parse(response);
        await _headersCache.saveHeaders(requestUri, headers);
        final convertedBody = response.body;

        if (convertedBody == null) {
          return const RemoteResponse.noContent();
        }

        return RemoteResponse.withNewData(
          NotificationDTO.fromJson(convertedBody),
          nextAvailable: false,
        );
      } else {
        throw RestApiException(response.statusCode);
      }
    } on SocketException {
      return const RemoteResponse.noConnection();
    }
  }

  @override
  Future<RemoteResponse<NotificationDTO>> createNotification({
    required int userId,
    required String? deviceId,
    required String? fcmToken,
  }) async {
    try {
      final response = await _notificationApi.createNotification(
        userId: userId.toString(),
        data: {
          'device_id': deviceId,
          'fcm_token': fcmToken,
        },
      );
      debugPrint('respons: $response');

      if (!response.isSuccessful) {
        throw RestApiException(response.statusCode);
      }

      final body = response.body;

      if (body == null) {
        return const RemoteResponse.noContent();
      }

      final notificationDTO = NotificationDTO.fromJson(body);

      return RemoteResponse.withNewData(notificationDTO, nextAvailable: false);
    } on SocketException {
      return const RemoteResponse.noConnection();
    }
  }

  @override
  Future<RemoteResponse<NotificationDTO>> updateNotification({
    required int userId,
    required String? deviceId,
    required String? fcmToken,
  }) async {
    try {
      final response = await _notificationApi.updateNotification(
        userId: userId.toString(),
        deviceId: deviceId,
        data: {
          'fcm_token': fcmToken,
        },
      );
      if (!response.isSuccessful) {
        throw RestApiException(response.statusCode);
      }

      final body = response.body;

      if (body == null) {
        return const RemoteResponse.noContent();
      }

      final shopCartDTO = NotificationDTO.fromJson(body);

      return RemoteResponse.withNewData(shopCartDTO, nextAvailable: false);
    } on SocketException {
      return const RemoteResponse.noConnection();
    }
  }

  @override
  Future<RemoteResponse<bool>> deleteNotification({
    required int userId,
    required String? deviceId,
  }) async {
    try {
      final response = await _notificationApi.deleteNotification(
        userId: userId.toString(),
        deviceId: deviceId,
      );

      if (!response.isSuccessful) {
        throw RestApiException(response.statusCode);
      }

      final body = response.body;

      if (body == null) {
        return const RemoteResponse.noContent();
      }
      return const RemoteResponse.withNewData(true, nextAvailable: false);
    } on SocketException {
      return const RemoteResponse.noConnection();
    }
  }
}
