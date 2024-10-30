import 'dart:ui';

import 'package:classic_shop/src/shared/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'locale_notifier.g.dart';

const spkLocale = 'locale';

@riverpod
class SelectedLocale extends _$SelectedLocale {
  @override
  Locale build() {
    final preferences = ref.watch(sharedPreferencesProvider);
    final localeString = preferences.getString(spkLocale) ?? 'ar';
    // final isDarkMode = ref.watch(
    //   settingsNotifierProvider.select((value) => value.settings.isDarkMode),
    // );
    return Locale(localeString);
  }
}
