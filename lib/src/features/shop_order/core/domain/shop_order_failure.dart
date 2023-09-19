import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_order_failure.freezed.dart';

@freezed
class ShopOrderFailure with _$ShopOrderFailure {
  const ShopOrderFailure._();
  const factory ShopOrderFailure.api(int? errorCode) = _Api;
}
