import 'package:classic_shop/src/features/cart/application/cart_notifier.dart';
import 'package:classic_shop/src/features/cart/domain/shop_cart_item.dart';
import 'package:classic_shop/src/features/checkout/core/data/checkout_api.dart';
import 'package:classic_shop/src/features/checkout/core/data/checkout_remote_service.dart';
import 'package:classic_shop/src/features/products/core/domain/promotion.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
CheckoutApi checkoutApi(Ref ref) {
  return CheckoutApi.create(ref);
}

@Riverpod(keepAlive: true)
CheckoutRemoteService checkoutRemoteService(Ref ref) {
  return CheckoutRemoteService(
    ref.watch(checkoutApiProvider),
  );
}

////////////////* Presentation ////////////////

class SelectedPaymentType {
  SelectedPaymentType(this.value);

  String? value;
}

@riverpod
class SelectedPaymentTypeNotifier extends _$SelectedPaymentTypeNotifier {
  @override
  SelectedPaymentType build() {
    return SelectedPaymentType(null);
  }

  void set(String? value) {
    state = SelectedPaymentType(value);
  }
}

@riverpod
class SubTotalNotifier extends _$SubTotalNotifier {
  late final List<ShopCartItem>? cartItems;
  @override
  num build() {
    cartItems = ref.watch(
      cartNotifierProvider.select(
        (value) => value.mapOrNull(
          loadSuccess: (_) => _.cartItems.entity,
        ),
      ),
    );
    discount();
    return state;
  }

  void discount() {
    state = cartItems?.fold<num>(
          0,
          (previous, cartItem) {
            final discountValue = _discount(cartItem);
            final discountedPrice = (num.parse(cartItem.price!) *
                    cartItem.qty *
                    (1 - (discountValue / 100)))
                .toStringAsFixed(2);
            return previous + num.parse(discountedPrice);
          },
        ) ??
        0;
  }

  int _discount(ShopCartItem cartItem) {
    late final promos = <Promotion>[];
    if (cartItem.productPromoDiscountRate != null) {
      promos.add(
        Promotion(
          promoId: cartItem.productPromoId,
          promoName: cartItem.productPromoName,
          promoDescription: cartItem.productPromoDescription,
          promoDiscountRate: cartItem.productPromoDiscountRate,
          promoActive: cartItem.productPromoActive,
          promoStartDate: cartItem.productPromoStartDate,
          promoEndDate: cartItem.productPromoEndDate,
        ),
      );
    }
    if (cartItem.categoryPromoDiscountRate != null) {
      promos.add(
        Promotion(
          promoId: cartItem.categoryPromoId,
          promoName: cartItem.categoryPromoName,
          promoDescription: cartItem.categoryPromoDescription,
          promoDiscountRate: cartItem.categoryPromoDiscountRate,
          promoActive: cartItem.categoryPromoActive,
          promoStartDate: cartItem.categoryPromoStartDate,
          promoEndDate: cartItem.categoryPromoEndDate,
        ),
      );
    }
    if (cartItem.brandPromoDiscountRate != null) {
      promos.add(
        Promotion(
          promoId: cartItem.brandPromoId,
          promoName: cartItem.brandPromoName,
          promoDescription: cartItem.brandPromoDescription,
          promoDiscountRate: cartItem.brandPromoDiscountRate,
          promoActive: cartItem.brandPromoActive,
          promoStartDate: cartItem.brandPromoStartDate,
          promoEndDate: cartItem.brandPromoEndDate,
        ),
      );
    }

    final validPromo = promos.where(
      (promo) =>
          promo.promoActive != null &&
          promo.promoActive! &&
          DateTime.now().isAfter(promo.promoStartDate!) &&
          DateTime.now().isBefore(promo.promoEndDate!),
    );

    if (validPromo.isEmpty) return 0;
    final bestPromo = validPromo.reduce(
      (currentBest, nextPromo) =>
          nextPromo.promoDiscountRate! > currentBest.promoDiscountRate!
              ? nextPromo
              : currentBest,
    );

    return bestPromo.promoDiscountRate!;
  }
}
