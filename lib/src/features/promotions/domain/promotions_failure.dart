import 'package:freezed_annotation/freezed_annotation.dart';

part 'promotions_failure.freezed.dart';

@freezed
class PromotionsFailure with _$PromotionsFailure {
  const PromotionsFailure._();
  // const factory PromotionsFailure.api(int? errorCode) = _Api;
  const factory PromotionsFailure.api(int? errorCode) = _Api;
  // const factory PromotionsFailure.storage() = _Storage;
}
