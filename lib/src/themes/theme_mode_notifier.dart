import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeModeNotifier extends Notifier<ThemeMode> {
  @override
  ThemeMode build() {
    final preferences = ref.watch(sharedPreferencesProvider);
    final isDarkMode = preferences.getBool('isDarkMode') ?? false;
    // final isDarkMode = ref.watch(
    //   settingsNotifierProvider.select((value) => value.settings.isDarkMode),
    // );
    return isDarkMode ? ThemeMode.dark : ThemeMode.light;
  }

  void changeTheme({bool isDarkMode = false}) {
    state = isDarkMode ? ThemeMode.dark : ThemeMode.light;
  }
}

final themeModeProvider =
    NotifierProvider<ThemeModeNotifier, ThemeMode>(ThemeModeNotifier.new);

final sharedPreferencesProvider =
    Provider<SharedPreferences>((ref) => throw UnimplementedError());
