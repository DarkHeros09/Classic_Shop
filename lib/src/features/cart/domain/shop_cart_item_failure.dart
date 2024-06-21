import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_cart_item_failure.freezed.dart';

@freezed
class ShopCartItemFailure with _$ShopCartItemFailure {
  const ShopCartItemFailure._();
  // const factory ShopCartItemFailure.api(int? errorCode) = _Api;
  const factory ShopCartItemFailure.api(int? errorCode) = _Api;
  // const factory ShopCartItemFailure.storage() = _Storage;
}
