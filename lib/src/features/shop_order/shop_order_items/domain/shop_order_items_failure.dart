import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_order_items_failure.freezed.dart';

@freezed
class ShopOrderItemsFailure with _$ShopOrderItemsFailure {
  const ShopOrderItemsFailure._();
  const factory ShopOrderItemsFailure.api(int? errorCode) = _Api;
}
