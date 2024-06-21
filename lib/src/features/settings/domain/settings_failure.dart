import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_failure.freezed.dart';

@freezed
class SettingsFailure with _$SettingsFailure {
  const SettingsFailure._();
  // const factory SettingsFailure.api(int? errorCode) = _Api;
  const factory SettingsFailure.api(int? errorCode) = _Api;
  // const factory SettingsFailure.storage() = _Storage;
}
