import 'package:classic_shop/src/features/settings/data/settings_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

const spkGetSalesNotifications = 'sales';
const spkGetNewProductsNotification = 'new';
const spkGetDeliveryStatusNotification = 'delivery_status';
const spkIsDarkMode = 'isDarkMode';

abstract class ISettingsLocalService {
  SettingsDTO getSettings();

  Future<void> updateSettings(SettingsDTO dto);
}

class SettingsLocalService implements ISettingsLocalService {
  SettingsLocalService(this._preferences);

  final SharedPreferences _preferences;
  // final _store = intMapStoreFactory.store('settings');

  @override
  SettingsDTO getSettings() {
    final getSalesNotification = _preferences.getBool(spkGetSalesNotifications);
    final getNewProductsNotification =
        _preferences.getBool(spkGetNewProductsNotification);
    final getDeliveryStatusNotification =
        _preferences.getBool(spkGetDeliveryStatusNotification);
    final isDarkMode = _preferences.getBool(spkIsDarkMode);
    return SettingsDTO(
      getSalesNotification: getSalesNotification ?? false,
      getNewProductsNotification: getNewProductsNotification ?? false,
      getDeliveryStatusNotification: getDeliveryStatusNotification ?? false,
      isDarkMode: isDarkMode ?? false,
    );
  }

  @override
  Future<void> updateSettings(SettingsDTO dto) async {
    await Future.wait([
      _preferences.setBool(spkGetSalesNotifications, dto.getSalesNotification),
      _preferences.setBool(
        spkGetNewProductsNotification,
        dto.getNewProductsNotification,
      ),
      _preferences.setBool(
        spkGetDeliveryStatusNotification,
        dto.getDeliveryStatusNotification,
      ),
      _preferences.setBool(spkIsDarkMode, dto.isDarkMode),
    ]);
  }
}


////* OLD

// abstract class ISettingsLocalService {
//   Future<SettingsDTO> getSettings(int userId);

//   Future<void> updateSettings(SettingsDTO dto, int userId);
// }

// class SettingsLocalService implements ISettingsLocalService {
//   SettingsLocalService(this._sembastDatabase);

//   final SembastDatabase _sembastDatabase;
//   // final _store = intMapStoreFactory.store('settings');

//   @override
//   Future<SettingsDTO> getSettings(int userId) async {
//     final store = intMapStoreFactory.store('$userId:userSettings');
//     final record = await store.record(userId).get(_sembastDatabase.instance);
//     debugPrint('settingssRecord: $record');

//     if (record != null) {
//       debugPrint('settingssLO: $record');
//       return SettingsDTO.fromJson(record);
//     }
//     return const SettingsDTO(
//       getSalesNotification: false,
//       getNewProductsNotification: false,
//       getDeliveryStatusNotification: false,
//       isDarkMode: false,
//     );
//   }

//   @override
//   Future<void> updateSettings(SettingsDTO dto, int userId) async {
//     final store = intMapStoreFactory.store('$userId:userSettings');
//     final saved =
//         await store.record(userId).put(_sembastDatabase.instance, dto.toJson());

//     debugPrint('settingssSAVED: $saved');
//   }
// }


