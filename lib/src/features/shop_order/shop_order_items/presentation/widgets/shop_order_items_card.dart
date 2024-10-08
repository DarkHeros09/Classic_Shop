import 'package:classic_shop/src/features/shop_order/shop_order_items/presentation/widgets/shop_order_items_list.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/shared/providers.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ShopOrderItemsCard extends ConsumerWidget {
  const ShopOrderItemsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    final index = ref.watch(shopOrderItemsCardIndexProvider);
    final shopOrderItems = ref.watch(
      shopOrderItemsNotifierProvider.select(
        (value) => value.mapOrNull(
          loadSuccess: (value) => value.shopOrderItems.entity[index],
        ),
      ),
    );
    debugPrint('ssddss price ${shopOrderItems?.price}');
    debugPrint('ssddss ${shopOrderItems?.discount}');
    debugPrint('ssddss quan ${shopOrderItems?.quantity}');
    final discountedPrice = (num.parse(shopOrderItems?.price ?? '') *
            (shopOrderItems?.quantity ?? 1) *
            (1 - ((shopOrderItems?.discount ?? 0) / 100)))
        .toStringAsFixed(2);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: 128,
        width: 396,
        decoration: BoxDecoration(
          color: isDarkMode ? const Color(0xFF0D0D0D) : Colors.white,
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
            // Image.network(
            //   width: 128,
            //   fit: BoxFit.cover,
            //   shopOrderItems?.productImage ?? '',
            // ),
            ExtendedImage(
              width: 128,
              height: 128,
              image: ExtendedNetworkImageProvider(
                shopOrderItems?.productImage ?? '',
                cache: true,
                cacheMaxAge: const Duration(days: 30),
              ),
              fit: BoxFit.cover,
            ),
            Positioned(
              right: 144,
              top: 12,
              child: Text(shopOrderItems?.productName ?? ''),
            ),
            Positioned(
              right: 144,
              top: 43,
              child: Text(
                'اللون: ${shopOrderItems?.productColor}',
                style: appTheme.textTheme.labelMedium,
              ),
            ),
            Positioned(
              right: 250,
              top: 43,
              child: Text(
                'الحجم: ${shopOrderItems?.productSize}',
                style: appTheme.textTheme.labelMedium,
              ),
            ),
            Positioned(
              bottom: 12,
              left: 16,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Text(
                        '${shopOrderItems?.price} د.ل',
                        style: appTheme.textTheme.bodyMedium?.copyWith(
                          fontWeight: shopOrderItems?.discount != 0
                              ? FontWeight.normal
                              : FontWeight.w700,
                          color: shopOrderItems?.discount != 0
                              ? const Color(0xFF9B9B9B)
                              : null,
                        ),
                      ),
                      if (shopOrderItems?.discount != 0)
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
                  if (shopOrderItems?.discount != 0) ...[
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
            ),
            Positioned(
              right: 144,
              bottom: 16,
              child: Text(
                'الكمية: ${shopOrderItems?.quantity}',
                style: appTheme.textTheme.labelMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
