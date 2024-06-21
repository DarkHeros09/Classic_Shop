import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_failure.freezed.dart';

@freezed
class NotificationFailure with _$NotificationFailure {
  const NotificationFailure._();
  const factory NotificationFailure.server([String? message]) = _Server;
  const factory NotificationFailure.storage() = _Storage;
}
