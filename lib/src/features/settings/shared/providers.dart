import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:classic_shop/src/features/settings/application/settings_notifier.dart';
import 'package:classic_shop/src/features/settings/data/settings_local_service.dart';
import 'package:classic_shop/src/features/settings/data/settings_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final settingsLocalServiceProvider = Provider<SettingsLocalService>((ref) {
  return SettingsLocalService(
    ref.watch(sembastProvider),
  );
});

final settingsRepositoryProvider = Provider<SettingsRepository>((ref) {
  return SettingsRepository(
    ref.watch(settingsLocalServiceProvider),
  );
});

final settingsNotifierProvider =
    NotifierProvider<SettingsNotifier, SettingsState>(SettingsNotifier.new);
