import 'package:classic_shop/src/features/products/core/domain/product.dart';
import 'package:classic_shop/src/routing/app_router.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductCard extends HookConsumerWidget {
  const ProductCard({
    required this.product,
    super.key,
  });

  final Product product;

  int discount() {
    late final int discount;
    final promo = (
      product.productPromoActive,
      product.categoryPromoActive,
      product.brandPromoActive
    );
    switch (promo) {
      case (true, _, _):
        discount = product.productPromoDiscountRate ?? 0;
      case (_, true, _):
        discount = product.categoryPromoDiscountRate ?? 0;
      case (_, _, true):
        discount = product.brandPromoDiscountRate ?? 0;
      default:
        discount = 0;
    }
    return discount;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    // final controller =
    //     useAnimationController(initialValue: product.qtyInStock == 0 ? .5 : 1);
    final discountValue = discount();
    final discountedPrice = (num.parse(product.price) -
            num.parse(product.price) * discountValue / 100)
        .toStringAsFixed(2);
    // final priceTagIcon = ref.read(
    //   siAssetsProvider.select(
    //     (value) => value
    //         .singleWhere(
    //           (element) => element.$1 == SvgAssets.priceTag.name,
    //         )
    //         .$2,
    //   ),
    // );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          onTap: () => context.pushNamed(
            AppRoute.productDetails.name,
            pathParameters: {'id': product.id.toString()},
            extra: (product, discountValue),
          ),
          child: Stack(
            children: [
              Container(
                height: 224,
                width: 190,
                // clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: product.qtyInStock == 0 ? .5 : 1,
                    colorFilter: product.qtyInStock == 0
                        ? const ColorFilter.mode(
                            Colors.white,
                            BlendMode.color,
                          )
                        : null,
                    image: ExtendedNetworkImageProvider(
                      product.productImage1,
                      cache: true,
                      cacheMaxAge: const Duration(days: 30),
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
              ),
              if (DateTime.now().difference(product.createdAt).inDays <= 7 &&
                  product.qtyInStock != 0)
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, bottom: 8),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          // color: Color(0xFFB71C1C),
                          color: Colors.black,
                        ),
                        child: Text(
                          'جديد',
                          style: appTheme.textTheme.labelSmall
                              ?.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              if (product.qtyInStock == 0)
                Positioned.fill(
                  child: Align(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, top: 8),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          color: Colors.black,
                        ),
                        child: Text(
                          // 'نفذت الكمية',
                          'إنتهى من المخزن',
                          style: appTheme.textTheme.labelMedium
                              ?.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              if (discountValue != 0 && product.qtyInStock != 0)
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, top: 8),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 2,
                        ),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          color: Color(0xFFDB3022),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '$discountValue%',
                              style: appTheme.textTheme.labelMedium
                                  ?.copyWith(color: Colors.white),
                            ),
                            const SizedBox(width: 4),
                            // Transform.flip(
                            //   // flipX: true,
                            //   child: ScalableImageWidget(
                            //     si: priceTagIcon,
                            //     scale: .5,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(height: 4),
        Text(
          product.brandName,
          style: appTheme.textTheme.bodySmall
              ?.copyWith(color: const Color(0xFF9B9B9B)),
        ),
        Text(
          product.name,
          style: appTheme.textTheme.bodyLarge,
        ),
        Row(
          children: [
            Stack(
              children: [
                Text(
                  '${product.price} د.ل',
                  style: appTheme.textTheme.bodyLarge?.copyWith(
                    fontWeight: discountValue != 0 || product.qtyInStock == 0
                        ? FontWeight.normal
                        : FontWeight.w700,
                    color: discountValue != 0 || product.qtyInStock == 0
                        ? const Color(0xFF9B9B9B)
                        : null,
                  ),
                ),
                if (discountValue != 0 || product.qtyInStock == 0)
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
            if (discountValue != 0 && product.qtyInStock != 0) ...[
              const SizedBox(width: 8),
              Text(
                '$discountedPrice د.ل',
                style: appTheme.textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w700,
                  // color: const Color(0xFFB71C1C),
                  color: const Color(0xFFDB3022),
                ),
              ),
            ],
          ],
        ),
      ],
    );
  }
}
