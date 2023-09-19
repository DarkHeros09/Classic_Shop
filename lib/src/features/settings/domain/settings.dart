import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';

@freezed
class Settings with _$Settings {
  const factory Settings({
    required bool getSalesNotification,
    required bool getNewProductsNotification,
    required bool getDeliveryStatusNotification,
    required bool isDarkMode,
  }) = _Settings;
}
