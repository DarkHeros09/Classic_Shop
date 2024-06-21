import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';

@freezed
class Notification with _$Notification {
  const factory Notification({
    required int userId,
    required String? deviceId,
    required String? fcmToken,
    required DateTime? createdAt,
    required DateTime? updatedAt,
  }) = _Notification;
}
