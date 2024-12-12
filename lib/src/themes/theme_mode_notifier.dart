import 'package:classic_shop/src/features/settings/data/settings_local_service.dart';
import 'package:classic_shop/src/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_mode_notifier.g.dart';

@Riverpod(keepAlive: true)
class ThemeModeNotifier extends _$ThemeModeNotifier {
  @override
  ThemeMode build() {
    final preferences = ref.watch(sharedPreferencesProvider).requireValue;
    final isDarkMode = preferences.getBool(spkIsDarkMode) ?? false;
    // final isDarkMode = ref.watch(
    //   settingsNotifierProvider.select((value) => value.settings.isDarkMode),
    // );
    return isDarkMode ? ThemeMode.dark : ThemeMode.light;
  }

  void changeTheme({bool isDarkMode = false}) {
    state = isDarkMode ? ThemeMode.dark : ThemeMode.light;
  }
}
