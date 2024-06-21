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
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'settings_notifier.freezed.dart';

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

class SettingsNotifier extends Notifier<SettingsState> {
  late final SettingsRepository _repository;
  @override
  SettingsState build() {
    _repository = ref.watch(settingsRepositoryProvider);

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
    ref.read(themeModeProvider.notifier).changeTheme(
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
    ref.watch(themeModeProvider.notifier).changeTheme(
          isDarkMode: settings.isDarkMode,
        );
    debugPrint('settingss: $settings');
    state = SettingsState.loadSuccess(settings);
    final sharedPreferences = ref.watch(sharedPreferencesProvider);
    await sharedPreferences.setBool(spkIsDarkMode, settings.isDarkMode);
  }
}
