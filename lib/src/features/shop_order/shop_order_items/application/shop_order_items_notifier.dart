import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/data/shop_order_items_local_service.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/data/shop_order_items_repository.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/domain/shop_order_items.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/domain/shop_order_items_failure.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/shared/providers.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'shop_order_items_notifier.freezed.dart';

@freezed
class ShopOrderItemsState with _$ShopOrderItemsState {
  const ShopOrderItemsState._();
  const factory ShopOrderItemsState.initial(
    Fresh<List<ShopOrderItems>> shopOrderItems,
  ) = _Initial;
  const factory ShopOrderItemsState.loadInProgress(
    Fresh<List<ShopOrderItems>> shopOrderItems,
  ) = _LoadInProgress;
  const factory ShopOrderItemsState.loadSuccess(
    Fresh<List<ShopOrderItems>> shopOrderItems,
  ) = _LoadSuccess;
  const factory ShopOrderItemsState.loadFailure(
    Fresh<List<ShopOrderItems>> shopOrderItems,
    ShopOrderItemsFailure failure,
  ) = _LoadFailure;
}

class ShopOrderItemsNotifier extends AutoDisposeNotifier<ShopOrderItemsState> {
  late final ShopOrderItemsRepository _repository;
  late final ShopOrderItemsLocalService _local;
  @override
  ShopOrderItemsState build() {
    _repository = ref.watch(shopOrderItemsRepositoryProvider);
    _local = ref.watch(shopOrderItemsLocalServiceProvider);
    return state = ShopOrderItemsState.initial(Fresh.yes([]));
  }

  Future<void> fetchShopOrderItems({required int orderId}) async {
    // Maybe remove in progress
    state = ShopOrderItemsState.loadInProgress(state.shopOrderItems);
    final shopShopOrderItemssOrFailure =
        await _repository.fetchShopOrderItems(orderId: orderId);
    state = await shopShopOrderItemssOrFailure.fold(
      (l) => ShopOrderItemsState.loadFailure(state.shopOrderItems, l),
      (r) async {
        return ShopOrderItemsState.loadSuccess(r);
      },
    );
  }

  // Future<void> updateShopOrderItems(ShopOrderItems shopShopOrderItems) async {
  //   // state = ShopOrderItemsState.loadInProgress(state.shop_order_items);
  //   final dto = ShopOrderItemsDTO.fromDomain(shopShopOrderItems);
  //   final updatedOrFailure = await _repository.updateShopOrderItems(dto);

  //   updatedOrFailure.fold(
  //     (l) => null,
  //     (r) {
  //       final i = state.shopOrderItems.entity.indexWhere(
  //         (element) =>
  //             element.productItemId == shopShopOrderItems.productItemId,
  //       );
  //       state.shopOrderItems.entity[i] = r;
  //       state = ShopOrderItemsState.loadSuccess(state.shopOrderItems);
  //     },
  //   );
  // }

  Future<void> deleteAllShopOrderItemss() async {
    state = ShopOrderItemsState.loadInProgress(state.shopOrderItems);
    await _local.deleteAllShopOrderItems();
    state = ShopOrderItemsState.loadSuccess(Fresh.yes([]));
  }
}
