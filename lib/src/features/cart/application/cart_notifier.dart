import 'package:classic_shop/src/features/cart/data/cart_repository.dart';
import 'package:classic_shop/src/features/cart/data/shop_cart_item_dto.dart';
import 'package:classic_shop/src/features/cart/domain/shop_cart_item.dart';
import 'package:classic_shop/src/features/cart/domain/shop_cart_item_failure.dart';
import 'package:classic_shop/src/features/cart/shared/providers.dart';
import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'cart_notifier.freezed.dart';

@freezed
class CartState with _$CartState {
  const CartState._();
  const factory CartState.initial(
    Fresh<List<ShopCartItem>> cartItems,
  ) = _Initial;
  const factory CartState.loadInProgress(
    Fresh<List<ShopCartItem>> cartItems,
  ) = _LoadInProgress;
  const factory CartState.loadSuccess(
    Fresh<List<ShopCartItem>> cartItems,
  ) = _LoadSuccess;
  const factory CartState.loadFailure(
    Fresh<List<ShopCartItem>> cartItems,
    ShopCartItemFailure failure,
  ) = _LoadFailure;
}

class CartNotifier extends Notifier<CartState> {
  late final CartRepository _repository;
  @override
  CartState build() {
    _repository = ref.watch(cartRepositoryProvider);
    return state = CartState.initial(Fresh.yes([]));
  }

  Future<void> fetchCart() async {
    // Maybe remove in progress
    state = CartState.loadInProgress(state.cartItems);
    final shopCartItemsOrFailure = await _repository.fetchCart();
    state = await shopCartItemsOrFailure.fold(
      (l) => CartState.loadFailure(state.cartItems, l),
      (r) {
        // await _repository.setCart(r.entity);
        return CartState.loadSuccess(r);
      },
    );
  }

  Future<void> createCartItem(ShopCartItem shopCartItem) async {
    state = CartState.loadInProgress(state.cartItems);
    final dto = ShopCartItemDTO.fromDomain(shopCartItem);
    // TODO: make it return a a value
    final successOrFailure = await _repository.createCartItem(dto: dto);
    state = successOrFailure.fold(
      (l) => CartState.loadFailure(state.cartItems, l),
      (r) => CartState.loadSuccess(state.cartItems),
    );
    // state = CartState.loadSuccess(state.cartItems);
  }

  Future<void> updateCart(ShopCartItem shopCartItem) async {
    // state = CartState.loadInProgress(state.cartItems);
    final dto = ShopCartItemDTO.fromDomain(shopCartItem);
    final updatedOrFailure = await _repository.updateCartItem(dto);

    updatedOrFailure.fold(
      (l) => null,
      (r) {
        final i = state.cartItems.entity.indexWhere(
          (element) => element.productItemId == shopCartItem.productItemId,
        );
        state.cartItems.entity[i] = r!;
        state = CartState.loadSuccess(state.cartItems);
      },
    );
  }

  Future<void> deleteCartItem(ShopCartItem shopCartItem) async {
    final dto = ShopCartItemDTO.fromDomain(shopCartItem);
    final isDeleted = await _repository.deleteCartItem(dto);

    if (isDeleted) {
      state.cartItems.entity.removeWhere(
        (element) => element.productItemId == shopCartItem.productItemId,
      );
    }

    state = CartState.loadSuccess(state.cartItems);
  }

  Future<void> deleteAllCartItems() async {
    state = CartState.loadInProgress(state.cartItems);
    await _repository.deleteAllCartItems();
    state = CartState.loadSuccess(Fresh.yes([]));
  }
  // Future<void> syncCart() async {
  //   await _repository.syncCartData();
  // }
}
