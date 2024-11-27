import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:classic_shop/src/features/settings/data/settings_dto.dart';
import 'package:classic_shop/src/features/settings/data/settings_repository.dart';
import 'package:classic_shop/src/features/settings/domain/settings.dart';
import 'package:classic_shop/src/features/settings/domain/settings_failure.dart';
import 'package:classic_shop/src/features/settings/shared/providers.dart';
import 'package:classic_shop/src/shared/providers.dart';
import 'package:classic_shop/src/themes/theme_mode_notifier.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'settings_notifier.freezed.dart';
part 'settings_notifier.g.dart';

@freezed
class SettingsState with _$SettingsState {
  const SettingsState._();
  const factory SettingsState.initial(
    Settings settings,
  ) = _Initial;
  const factory SettingsState.loadInProgress(
    Settings settings,
  ) = _LoadInProgress;
  const factory SettingsState.loadSuccess(
    Settings settings,
  ) = _LoadSuccess;
  const factory SettingsState.loadFailure(
    Settings settings,
    SettingsFailure failure,
  ) = _LoadFailure;
}

@Riverpod(keepAlive: true)
class SettingsNotifier extends _$SettingsNotifier {
  late final SettingsRepository _repository;
  late final SharedPreferences _sharedPreferences;
  @override
  SettingsState build() {
    _repository = ref.watch(settingsRepositoryProvider);
    _sharedPreferences = ref.watch(sharedPreferencesProvider).requireValue;
    return state = const SettingsState.initial(
      Settings(
        getSalesNotification: false,
        getNewProductsNotification: false,
        getDeliveryStatusNotification: false,
        isDarkMode: false,
      ),
    );
  }

  Future<void> fetchSettings() async {
    // Maybe remove in progress
    state = SettingsState.loadInProgress(state.settings);
    final user = await ref.read(userStorageProvider).read();
    final settings = await _repository.fetchSettings(user?.id ?? 0);
    ref.read(themeModeNotifierProvider.notifier).changeTheme(
          isDarkMode: settings.isDarkMode,
        );
    debugPrint('settingss: $settings');
    state = SettingsState.loadSuccess(settings);
  }

  Future<void> updateSettings(Settings settings) async {
    // state = SettingsState.loadInProgress(state.settings);
    final dto = SettingsDTO.fromDomain(settings);
    final user = await ref.read(userStorageProvider).read();
    await _repository.updateSettings(dto, user?.id ?? 0);
    ref.watch(themeModeNotifierProvider.notifier).changeTheme(
          isDarkMode: settings.isDarkMode,
        );
    debugPrint('settingss: $settings');
    state = SettingsState.loadSuccess(settings);
    await _sharedPreferences.setBool(spkIsDarkMode, settings.isDarkMode);
  }
}
