import 'package:classic_shop/src/features/core/data/sembast_database.dart';
import 'package:classic_shop/src/features/settings/data/settings_dto.dart';
import 'package:flutter/foundation.dart';
import 'package:sembast/sembast.dart';

abstract class ISettingsLocalService {
  Future<SettingsDTO> getSettings(int userId);

  Future<void> updateSettings(SettingsDTO dto, int userId);
}

class SettingsLocalService implements ISettingsLocalService {
  SettingsLocalService(this._sembastDatabase);

  final SembastDatabase _sembastDatabase;
  // final _store = intMapStoreFactory.store('settings');

  @override
  Future<SettingsDTO> getSettings(int userId) async {
    final store = intMapStoreFactory.store('$userId:userSettings');
    final record = await store.record(userId).get(_sembastDatabase.instance);
    debugPrint('settingssRecord: $record');

    if (record != null) {
      debugPrint('settingssLO: $record');
      return SettingsDTO.fromJson(record);
    }
    return const SettingsDTO(
      getSalesNotification: false,
      getNewProductsNotification: false,
      getDeliveryStatusNotification: false,
      isDarkMode: false,
    );
  }

  @override
  Future<void> updateSettings(SettingsDTO dto, int userId) async {
    final store = intMapStoreFactory.store('$userId:userSettings');
    final saved =
        await store.record(userId).put(_sembastDatabase.instance, dto.toJson());

    debugPrint('settingssSAVED: $saved');
  }
}
