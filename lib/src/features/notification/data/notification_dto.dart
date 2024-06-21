import 'package:classic_shop/src/features/notification/domain/notification.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_dto.freezed.dart';
part 'notification_dto.g.dart';

@freezed
class NotificationDTO with _$NotificationDTO {
  const factory NotificationDTO({
    required int userId,
    required String? deviceId,
    required String? fcmToken,
    required DateTime? createdAt,
    required DateTime? updatedAt,
  }) = _NotificationDTO;
  const NotificationDTO._();

  factory NotificationDTO.fromJson(Map<String, dynamic> json) =>
      _$NotificationDTOFromJson(json);

  factory NotificationDTO.fromDomain(Notification _) {
    return NotificationDTO(
      userId: _.userId,
      deviceId: _.deviceId,
      fcmToken: _.fcmToken,
      createdAt: _.createdAt,
      updatedAt: _.updatedAt,
    );
  }

  Notification toDomain() {
    return Notification(
      userId: userId,
      deviceId: deviceId,
      fcmToken: fcmToken,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
