import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:classic_shop/src/features/cart/domain/shop_cart_item.dart';
import 'package:classic_shop/src/features/cart/shared/providers.dart';
import 'package:classic_shop/src/features/products/core/domain/promotion.dart';
import 'package:classic_shop/src/features/wish_list/domain/wish_list_item.dart';
import 'package:classic_shop/src/features/wish_list/presentation/widgets/loading_wish_list_image.dart';
import 'package:classic_shop/src/features/wish_list/presentation/widgets/wish_list_item_list.dart';
import 'package:classic_shop/src/features/wish_list/shared/providers.dart';
import 'package:classic_shop/src/shared/toasts.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WishListProductCard extends ConsumerWidget {
  const WishListProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(wishListItemsListIndexProvider);
    final wishListItems = ref.watch(
      wishListNotifierProvider.select(
        (state) => state.map(
          initial: (_) => _.wishListItems.entity[index],
          loadInProgress: (_) => _.wishListItems.entity[index],
          loadSuccess: (_) => _.wishListItems.entity[index],
          loadFailure: (_) => _.wishListItems.entity[index],
        ),
      ),
    );
    return _WishListProductCard(
      wishListItems: wishListItems,
    );
  }
}

class _WishListProductCard extends StatelessWidget {
  const _WishListProductCard({
    required this.wishListItems,
  });

  final WishListItem wishListItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      height: 128,
      width: 396,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x24000000),
            offset: Offset(0, 2),
            blurRadius: 4,
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Stack(
        children: [
          ExtendedImage.network(
            loadStateChanged: (state) {
              switch (state.extendedImageLoadState) {
                case LoadState.loading:
                  return const LoadingWishListImage();
                case LoadState.failed:
                case LoadState.completed:
                  return state.completedWidget;
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
            wishListItems.productImage ?? '',
            cacheMaxAge: const Duration(days: 30),
          ),
          _ProductName(wishListItems: wishListItems),
          _ProductColor(wishListItems: wishListItems),
          _ProductSize(wishListItems: wishListItems),
          _OptionsButton(
            wishListItems,
          ),
          _ProductPrice(wishListItems: wishListItems),
        ],
      ),
    );
  }
}

class _ProductPrice extends StatelessWidget {
  const _ProductPrice({
    required this.wishListItems,
  });

  final WishListItem wishListItems;

  int discount() {
    late final promos = <Promotion>[];
    if (wishListItems.productPromoDiscountRate != null) {
      promos.add(
        Promotion(
          promoId: wishListItems.productPromoId,
          promoName: wishListItems.productPromoName,
          promoDescription: wishListItems.productPromoDescription,
          promoDiscountRate: wishListItems.productPromoDiscountRate,
          promoActive: wishListItems.productPromoActive,
          promoStartDate: wishListItems.productPromoStartDate,
          promoEndDate: wishListItems.productPromoEndDate,
        ),
      );
    }
    if (wishListItems.categoryPromoDiscountRate != null) {
      promos.add(
        Promotion(
          promoId: wishListItems.categoryPromoId,
          promoName: wishListItems.categoryPromoName,
          promoDescription: wishListItems.categoryPromoDescription,
          promoDiscountRate: wishListItems.categoryPromoDiscountRate,
          promoActive: wishListItems.categoryPromoActive,
          promoStartDate: wishListItems.categoryPromoStartDate,
          promoEndDate: wishListItems.categoryPromoEndDate,
        ),
      );
    }
    if (wishListItems.brandPromoDiscountRate != null) {
      promos.add(
        Promotion(
          promoId: wishListItems.brandPromoId,
          promoName: wishListItems.brandPromoName,
          promoDescription: wishListItems.brandPromoDescription,
          promoDiscountRate: wishListItems.brandPromoDiscountRate,
          promoActive: wishListItems.brandPromoActive,
          promoStartDate: wishListItems.brandPromoStartDate,
          promoEndDate: wishListItems.brandPromoEndDate,
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
    final originalPrice = num.parse(wishListItems.price!).toStringAsFixed(2);
    final discountedPrice =
        (num.parse(wishListItems.price!) * (1 - (discountValue / 100)))
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
    this.wishListItems,
  );
  final WishListItem wishListItems;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
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
              final cuurentCartItems = ref
                  .read(cartNotifierProvider)
                  .cartItems
                  .entity
                  .where(
                    (element) =>
                        element.productItemId == wishListItems.productItemId,
                  )
                  .firstOrNull;
              if (authUser != null) {
                if (cuurentCartItems != null) {
                  await showQuickToast(
                    'تمت إضافة هذا المنتج في قائمة المشتريات بالفعل',
                    context,
                  );
                } else {
                  await ref.read(cartNotifierProvider.notifier).createCartItem(
                        ShopCartItem(
                          id: null,
                          shoppingCartId: authUser.shoppingCartId,
                          productItemId: wishListItems.productItemId,
                          name: wishListItems.name,
                          qty: 1,
                          productImage: wishListItems.productImage,
                          color: wishListItems.color,
                          size: wishListItems.size,
                          price: wishListItems.price,
                          active: wishListItems.active,
                          createdAt: wishListItems.createdAt ?? DateTime.now(),
                          updatedAt: wishListItems.updatedAt ?? DateTime.now(),
                          categoryPromoId: wishListItems.categoryPromoId,
                          categoryPromoName: wishListItems.categoryPromoName,
                          categoryPromoDescription:
                              wishListItems.categoryPromoDescription,
                          categoryPromoDiscountRate:
                              wishListItems.categoryPromoDiscountRate,
                          categoryPromoActive:
                              wishListItems.categoryPromoActive,
                          categoryPromoStartDate:
                              wishListItems.categoryPromoStartDate,
                          categoryPromoEndDate:
                              wishListItems.categoryPromoEndDate,
                          brandPromoId: wishListItems.brandPromoId,
                          brandPromoName: wishListItems.brandPromoName,
                          brandPromoDescription:
                              wishListItems.brandPromoDescription,
                          brandPromoDiscountRate:
                              wishListItems.brandPromoDiscountRate,
                          brandPromoActive: wishListItems.brandPromoActive,
                          brandPromoStartDate:
                              wishListItems.brandPromoStartDate,
                          brandPromoEndDate: wishListItems.brandPromoEndDate,
                          productPromoId: wishListItems.productPromoId,
                          productPromoName: wishListItems.productPromoName,
                          productPromoDescription:
                              wishListItems.productPromoDescription,
                          productPromoDiscountRate:
                              wishListItems.productPromoDiscountRate,
                          productPromoActive: wishListItems.productPromoActive,
                          productPromoStartDate:
                              wishListItems.productPromoStartDate,
                          productPromoEndDate:
                              wishListItems.productPromoEndDate,
                        ),
                      );
                }
              }
            },
            value: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'إضافة إلى سلة المشتريات',
                  style: appTheme.textTheme.labelLarge,
                ),
                const SizedBox(
                  width: 28,
                ),
                const Icon(
                  Icons.favorite,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          PopupMenuItem(
            value: 4,
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
          if (value == 3) {
          } else if (value == 4) {
            debugPrint('statement called');
            await ref
                .read(wishListNotifierProvider.notifier)
                .deleteWishListItem(wishListItems);
          }
        },
      ),
    );
  }
}

class _ProductSize extends StatelessWidget {
  const _ProductSize({
    required this.wishListItems,
  });

  final WishListItem wishListItems;

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
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
            wishListItems.size ?? '',
            style: appTheme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}

class _ProductColor extends StatelessWidget {
  const _ProductColor({
    required this.wishListItems,
  });

  final WishListItem wishListItems;

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
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
            wishListItems.color ?? '',
            style: appTheme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}

class _ProductName extends StatelessWidget {
  const _ProductName({
    required this.wishListItems,
  });

  final WishListItem wishListItems;

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return Positioned(
      right: 144,
      top: 12,
      child: Text(
        wishListItems.name!,
        style:
            appTheme.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w700),
      ),
    );
  }
}
