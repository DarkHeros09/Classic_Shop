import 'package:classic_shop/src/features/settings/domain/settings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_dto.freezed.dart';
part 'settings_dto.g.dart';

@freezed
class SettingsDTO with _$SettingsDTO {
  const factory SettingsDTO({
    required bool getSalesNotification,
    required bool getNewProductsNotification,
    required bool getDeliveryStatusNotification,
    required bool isDarkMode,
  }) = _SettingsDTO;
  const SettingsDTO._();

  factory SettingsDTO.fromJson(Map<String, dynamic> json) =>
      _$SettingsDTOFromJson(json);

  factory SettingsDTO.fromDomain(Settings _) {
    return SettingsDTO(
      getSalesNotification: _.getSalesNotification,
      getNewProductsNotification: _.getNewProductsNotification,
      getDeliveryStatusNotification: _.getDeliveryStatusNotification,
      isDarkMode: _.isDarkMode,
    );
  }

  Settings toDomain() {
    return Settings(
      getSalesNotification: getSalesNotification,
      getNewProductsNotification: getNewProductsNotification,
      getDeliveryStatusNotification: getDeliveryStatusNotification,
      isDarkMode: isDarkMode,
    );
  }
}
