import 'package:classic_shop/src/features/settings/data/settings_local_service.dart';
import 'package:classic_shop/src/features/settings/data/settings_repository.dart';
import 'package:classic_shop/src/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
SettingsLocalService settingsLocalService(Ref ref) {
  return SettingsLocalService(
    ref.watch(sharedPreferencesProvider).requireValue,
  );
}

@Riverpod(keepAlive: true)
SettingsRepository settingsRepository(Ref ref) {
  return SettingsRepository(
    ref.watch(settingsLocalServiceProvider),
  );
}
