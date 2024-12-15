import 'package:classic_shop/src/features/auth/application/auth_notifier.dart';
import 'package:classic_shop/src/features/cart/application/cart_notifier.dart';
import 'package:classic_shop/src/features/cart/domain/shop_cart_item.dart';
import 'package:classic_shop/src/features/cart/presentation/cart/widgets/loading_cart_image.dart';
import 'package:classic_shop/src/features/cart/shared/providers.dart';
import 'package:classic_shop/src/features/products/core/domain/promotion.dart';
import 'package:classic_shop/src/features/wish_list/application/wish_list_notifier.dart';
import 'package:classic_shop/src/features/wish_list/domain/wish_list_item.dart';
import 'package:classic_shop/src/shared/toasts.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CartProductCard extends ConsumerWidget {
  const CartProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(cartItemsListIndexProvider);
    final cartItems = ref.watch(
      cartNotifierProvider.select(
        (state) => state.map(
          initial: (_) => _.cartItems.entity[index],
          loadInProgress: (_) => _.cartItems.entity[index],
          loadSuccess: (_) => _.cartItems.entity[index],
          loadFailure: (_) => _.cartItems.entity[index],
        ),
      ),
    );
    return _CartProductCard(
      cartItems: cartItems,
    );
  }
}

class _CartProductCard extends StatelessWidget {
  const _CartProductCard({
    required this.cartItems,
  });

  final ShopCartItem cartItems;

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    return Column(
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          height: 128,
          width: 396,
          decoration: BoxDecoration(
            color: isDarkMode
                ? cartItems.sizeQty != 0
                    ? const Color(0xFF0D0D0D)
                    : const Color(0xFF4D4D4D)
                : Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color(0x24000000),
                offset: Offset(0, 2),
                blurRadius: 4,
              ),
            ],
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: Stack(
            children: [
              ExtendedImage.network(
                loadStateChanged: (state) {
                  switch (state.extendedImageLoadState) {
                    case LoadState.loading:
                    case LoadState.failed:
                      return const LoadingCartImage();
                    case LoadState.completed:
                      return ColorFiltered(
                        colorFilter: cartItems.sizeQty == 0
                            ? const ColorFilter.mode(
                                Colors.white,
                                BlendMode.color,
                              )
                            : const ColorFilter.mode(
                                Colors.transparent,
                                BlendMode.color,
                              ),
                        child: state.completedWidget,
                      );
                  }
                },
                shape: BoxShape.rectangle,
                height: 128,
                width: 128,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                fit: BoxFit.cover,
                cartItems.productImage ?? '',
                cacheMaxAge: const Duration(days: 30),
              ),
              _ProductName(cartItems: cartItems),
              _ProductColor(cartItems: cartItems),
              _ProductSize(cartItems: cartItems),
              _OptionsButton(
                cartItems,
              ),
              if (cartItems.sizeQty != 0) ...[
                _ProductPrice(cartItems: cartItems),
                _ProductQTY(
                  cartItems: cartItems,
                  key: Key(cartItems.id.toString()),
                ),
              ],
            ],
          ),
        ),
        if (cartItems.sizeQty == 0) ...[
          const SizedBox(height: 8),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              'عذرًا، هذا المنتج غير متوفر حاليًا',
              style: appTheme.textTheme.bodySmall?.copyWith(fontSize: 12),
            ),
          ),
        ],
      ],
    );
  }
}

// class ProductQTYNotifier extends AutoDisposeNotifier<int> {
//   @override
//   int build() {
//     return 1;
//   }

//   Future<void> previousProductQTY(int productItemId) async {
//     final cartRepository = ref.watch(cartRepositoryProvider);
//     final cartItem = await cartRepository.getCartItem(productItemId);
//     debugPrint('CART STATE: $cartItem');
//     state = cartItem?.sizeQty ?? 1;
//     debugPrint('STATE: $state');
//   }

//   // Future<void> update(int productItemId) async {
//   //   final cartRepository = ref.watch(cartRepositoryProvider);
//   //   final cartItem = await cartRepository.getCartItem(productItemId);
//   //   final updatedCartItem = await cartRepository.updateCartItem(
//   //     ShopCartItemDTO.fromDomain(cartItem!),
//   //   );
//   //   state = updatedCartItem?.sizeQty ?? 1;
//   // }

//   set sizeQty(int length) {
//     if (length > 1 && length < 5) {
//       state = length;
//     }
//   }

//   int get sizeQty => state;
// }

// final productQTYNotifierProvider =
//     NotifierProvider.autoDispose<ProductQTYNotifier, int>(
//   ProductQTYNotifier.new,
// );

class _ProductQTY extends HookConsumerWidget {
  const _ProductQTY({
    required this.cartItems,
    super.key,
  });

  final ShopCartItem cartItems;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final productQty = ref.watch(productQTYNotifierProvider);
    final qty = useState(cartItems.qty);
    // sizeQty.addListener(
    //   () {
    //     debugPrint('CARTINT ${cartItems.name}: $sizeQty');
    //   },
    // );
    // debugPrint('previuosQty: ${sizeQty.value}');
    return Positioned(
      right: 144,
      bottom: 12,
      child: Row(
        children: [
          _CounterButton(
            icon: Icons.add,
            onTap: () async {
              // final sizeQty = ++ref.read(productQTYNotifierProvider.notifier).sizeQty;

              if (qty.value < 5) {
                final qty1 = ++qty.value;
                // debugPrint('CARTINT ${cartItems.name}: $sizeQty1');
                await ref
                    .read(cartNotifierProvider.notifier)
                    .updateCart(cartItems.copyWith(qty: qty1));
              }
            },
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            qty.value.toString(),
          ),
          const SizedBox(
            width: 12,
          ),
          _CounterButton(
            icon: Icons.remove,
            onTap: () async {
              // final qty = --ref.read(productQTYNotifierProvider.notifier).qty;
              if (qty.value > 1) {
                final qty1 = --qty.value;
                // debugPrint('CARTINT ${cartItems.name}: $sizeQty1');
                await ref
                    .read(cartNotifierProvider.notifier)
                    .updateCart(cartItems.copyWith(qty: qty1));
              }
            },
          ),
        ],
      ),
    );
  }
}

class _CounterButton extends StatelessWidget {
  const _CounterButton({
    required this.icon,
    required this.onTap,
  });

  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 8,
            color: Color(
              0x1A000000,
            ),
          ),
        ],
      ),
      child: InkWell(
        onTap: onTap,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 18,
          child: Icon(
            icon,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

class _ProductPrice extends StatelessWidget {
  const _ProductPrice({
    required this.cartItems,
  });

  final ShopCartItem cartItems;

  int discount() {
    late final promos = <Promotion>[];
    if (cartItems.productPromoDiscountRate != null) {
      promos.add(
        Promotion(
          promoId: cartItems.productPromoId,
          promoName: cartItems.productPromoName,
          promoDescription: cartItems.productPromoDescription,
          promoDiscountRate: cartItems.productPromoDiscountRate,
          promoActive: cartItems.productPromoActive,
          promoStartDate: cartItems.productPromoStartDate,
          promoEndDate: cartItems.productPromoEndDate,
        ),
      );
    }
    if (cartItems.categoryPromoDiscountRate != null) {
      promos.add(
        Promotion(
          promoId: cartItems.categoryPromoId,
          promoName: cartItems.categoryPromoName,
          promoDescription: cartItems.categoryPromoDescription,
          promoDiscountRate: cartItems.categoryPromoDiscountRate,
          promoActive: cartItems.categoryPromoActive,
          promoStartDate: cartItems.categoryPromoStartDate,
          promoEndDate: cartItems.categoryPromoEndDate,
        ),
      );
    }
    if (cartItems.brandPromoDiscountRate != null) {
      promos.add(
        Promotion(
          promoId: cartItems.brandPromoId,
          promoName: cartItems.brandPromoName,
          promoDescription: cartItems.brandPromoDescription,
          promoDiscountRate: cartItems.brandPromoDiscountRate,
          promoActive: cartItems.brandPromoActive,
          promoStartDate: cartItems.brandPromoStartDate,
          promoEndDate: cartItems.brandPromoEndDate,
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

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    final discountValue = discount();
    final originalPrice =
        (num.parse(cartItems.price!) * cartItems.qty).toStringAsFixed(2);
    final discountedPrice = (num.parse(cartItems.price!) *
            cartItems.qty *
            (1 - (discountValue / 100)))
        .toStringAsFixed(2);
    return Positioned(
      bottom: 12,
      left: 16,
      child: Column(
        children: [
          Stack(
            children: [
              Text(
                '$originalPrice د.ل',
                style: appTheme.textTheme.bodyMedium?.copyWith(
                  fontWeight:
                      discountValue != 0 ? FontWeight.normal : FontWeight.w700,
                  color: discountValue != 0 ? const Color(0xFF9B9B9B) : null,
                ),
              ),
              if (discountValue != 0)
                const Positioned.fill(
                  child: SizedBox(
                    width: double.infinity,
                    child: Divider(
                      color: Color(0xFF9B9B9B),
                      // height: 25,
                      thickness: 1,
                    ),
                  ),
                ),
            ],
          ),
          if (discountValue != 0) ...[
            const SizedBox(width: 8),
            Text(
              '$discountedPrice د.ل',
              style: appTheme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w700,
                // color: const Color(0xFFB71C1C),
                color: const Color(0xFFDB3022),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _OptionsButton extends ConsumerWidget {
  const _OptionsButton(
    this.cartItems,
  );
  final ShopCartItem cartItems;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    final wishListItem = ref.watch(
      wishListNotifierProvider.select(
        (value) => value.wishListItems.entity
            .where(
              (element) => element.productItemId == cartItems.productItemId,
            )
            .firstOrNull,
      ),
    );
    return Positioned(
      top: 0,
      left: 0,
      child: PopupMenuButton(
        offset: const Offset(10, 25),
        elevation: 16,
        itemBuilder: (context) => [
          PopupMenuItem(
            onTap: () async {
              final authUser =
                  ref.read(authNotifierProvider.notifier).currentUser;
              if (authUser != null) {
                if (wishListItem != null) {
                  await showQuickToast(
                    'تمت إضافة هذا المنتج في قائمة الأمنيات بالفعل',
                    context,
                  );
                }
                await ref
                    .read(wishListNotifierProvider.notifier)
                    .createWishListItem(
                      WishListItem(
                        id: null,
                        wishListId: authUser.wishListId,
                        productItemId: cartItems.productItemId,
                        name: cartItems.name,
                        productImage: cartItems.productImage,
                        color: cartItems.color,
                        sizeId: cartItems.sizeId,
                        sizeValue: cartItems.sizeValue,
                        sizeQty: cartItems.sizeQty,
                        price: cartItems.price,
                        active: cartItems.active,
                        createdAt: cartItems.createdAt,
                        updatedAt: cartItems.updatedAt,
                        categoryPromoId: cartItems.categoryPromoId,
                        categoryPromoName: cartItems.categoryPromoName,
                        categoryPromoDescription:
                            cartItems.categoryPromoDescription,
                        categoryPromoDiscountRate:
                            cartItems.categoryPromoDiscountRate,
                        categoryPromoActive: cartItems.categoryPromoActive,
                        categoryPromoStartDate:
                            cartItems.categoryPromoStartDate,
                        categoryPromoEndDate: cartItems.categoryPromoEndDate,
                        brandPromoId: cartItems.brandPromoId,
                        brandPromoName: cartItems.brandPromoName,
                        brandPromoDescription: cartItems.brandPromoDescription,
                        brandPromoDiscountRate:
                            cartItems.brandPromoDiscountRate,
                        brandPromoActive: cartItems.brandPromoActive,
                        brandPromoStartDate: cartItems.brandPromoStartDate,
                        brandPromoEndDate: cartItems.brandPromoEndDate,
                        productPromoId: cartItems.productPromoId,
                        productPromoName: cartItems.productPromoName,
                        productPromoDescription:
                            cartItems.productPromoDescription,
                        productPromoDiscountRate:
                            cartItems.productPromoDiscountRate,
                        productPromoActive: cartItems.productPromoActive,
                        productPromoStartDate: cartItems.productPromoStartDate,
                        productPromoEndDate: cartItems.productPromoEndDate,
                      ),
                    );
              }
            },
            value: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'إضافة إلى المفضلات',
                  style: appTheme.textTheme.labelLarge,
                ),
                const SizedBox(
                  width: 28,
                ),
                Icon(
                  Icons.favorite,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ],
            ),
          ),
          PopupMenuItem(
            value: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'حذف',
                  style: appTheme.textTheme.labelLarge!
                      .copyWith(color: Colors.red),
                ),
                const SizedBox(
                  width: 28,
                ),
                const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ],
        onSelected: (value) async {
          if (value == 1) {
          } else if (value == 2) {
            debugPrint('statement called');
            await ref
                .read(cartNotifierProvider.notifier)
                .deleteCartItem(cartItems);
          }
        },
      ),
    );
  }
}

class _ProductSize extends StatelessWidget {
  const _ProductSize({
    required this.cartItems,
  });

  final ShopCartItem cartItems;
  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    return Positioned(
      right: 240,
      top: 43,
      child: Row(
        children: [
          Text(
            'الحجم: ',
            style: appTheme.textTheme.bodySmall
                ?.copyWith(color: const Color(0xff7D7979)),
          ),
          Text(
            cartItems.sizeValue ?? '',
            style: appTheme.textTheme.bodySmall?.copyWith(
              color: isDarkMode
                  ? cartItems.sizeQty == 0
                      ? Colors.white.withAlpha(50)
                      : null
                  : cartItems.sizeQty == 0
                      ? Colors.black.withAlpha(50)
                      : null,
            ),
          ),
        ],
      ),
    );
  }
}

class _ProductColor extends StatelessWidget {
  const _ProductColor({
    required this.cartItems,
  });

  final ShopCartItem cartItems;

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    return Positioned(
      right: 144,
      top: 43,
      child: Row(
        children: [
          Text(
            'اللون: ',
            style: appTheme.textTheme.bodySmall
                ?.copyWith(color: const Color(0xff7D7979)),
          ),
          Text(
            cartItems.color ?? '',
            style: appTheme.textTheme.bodySmall?.copyWith(
              color: isDarkMode
                  ? cartItems.sizeQty == 0
                      ? Colors.white.withAlpha(50)
                      : null
                  : cartItems.sizeQty == 0
                      ? Colors.black.withAlpha(50)
                      : null,
            ),
          ),
        ],
      ),
    );
  }
}

class _ProductName extends StatelessWidget {
  const _ProductName({
    required this.cartItems,
  });

  final ShopCartItem cartItems;

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    return Positioned(
      right: 144,
      top: 12,
      child: SizedBox(
        width: 180,
        child: Text(
          cartItems.name ?? '',
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: appTheme.textTheme.bodySmall?.copyWith(
            fontWeight: FontWeight.w700,
            color: isDarkMode
                ? cartItems.sizeQty == 0
                    ? Colors.white.withAlpha(50)
                    : null
                : cartItems.sizeQty == 0
                    ? Colors.black.withAlpha(50)
                    : null,
          ),
        ),
      ),
    );
  }
}
