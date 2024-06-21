import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_banner_failure.freezed.dart';

@freezed
class TextBannerFailure with _$TextBannerFailure {
  const TextBannerFailure._();
  // const factory TextBannerFailure.api(int? errorCode) = _Api;
  const factory TextBannerFailure.api(int? errorCode) = _Api;
  // const factory TextBannerFailure.storage() = _Storage;
}
