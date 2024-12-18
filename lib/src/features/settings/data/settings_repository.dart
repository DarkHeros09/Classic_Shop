import 'package:classic_shop/src/features/settings/data/settings_dto.dart';
import 'package:classic_shop/src/features/settings/data/settings_local_service.dart';
import 'package:classic_shop/src/features/settings/domain/settings.dart';
import 'package:flutter/foundation.dart';

class SettingsRepository {
  SettingsRepository(
    this._localService,
  );

  final SettingsLocalService _localService;

  Settings fetchSettings() {
    // try {
    final settings = _localService.getSettings();
    debugPrint('settingssRepo: $settings');
    return settings.toDomain();
    // } on Exception catch (_) {
    //   rethrow;
    // }
  }

  Future<void> updateSettings(SettingsDTO dto) async {
    await _localService.updateSettings(dto);
  }
}
