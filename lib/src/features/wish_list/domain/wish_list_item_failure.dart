import 'package:freezed_annotation/freezed_annotation.dart';

part 'wish_list_item_failure.freezed.dart';

@freezed
class WishListItemFailure with _$WishListItemFailure {
  const WishListItemFailure._();
  // const factory WishListItemFailure.api(int? errorCode) = _Api;
  const factory WishListItemFailure.api(int? errorCode) = _Api;
  // const factory WishListItemFailure.storage() = _Storage;
}
