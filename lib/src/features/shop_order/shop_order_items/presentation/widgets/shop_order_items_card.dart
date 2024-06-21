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
            )
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
                'اللون: الاحمر',
                style: appTheme.textTheme.labelMedium,
              ),
            ),
            Positioned(
              right: 250,
              top: 43,
              child: Text(
                'الحجم: متوسط',
                style: appTheme.textTheme.labelMedium,
              ),
            ),
            Positioned(
              bottom: 12,
              left: 4,
              child: Row(
                children: [
                  Text(
                    '${shopOrderItems?.price} د.ل',
                    style: appTheme.textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Icon(
                    Icons.price_check,
                  )
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
            )
          ],
        ),
      ),
    );
  }
}
