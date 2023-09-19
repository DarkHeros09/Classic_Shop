import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_failure.freezed.dart';

@freezed
class BrandFailure with _$BrandFailure {
  const BrandFailure._();
  // const factory BrandFailure.api(int? errorCode) = _Api;
  const factory BrandFailure.api(int? errorCode) = _Api;
  // const factory BrandFailure.storage() = _Storage;
}
