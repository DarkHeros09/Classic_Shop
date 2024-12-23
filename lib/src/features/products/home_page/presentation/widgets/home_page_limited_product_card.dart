import 'package:classic_shop/src/features/products/core/presentation/widgets/product_card.dart';
import 'package:classic_shop/src/features/products/home_page/application/home_page_notifier.dart';
import 'package:classic_shop/src/features/products/home_page/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LimitedProductCard extends ConsumerWidget {
  const LimitedProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index =
        ref.watch(homepageProductsIndexProvider(ProductType.isLimited));
    final product = ref.watch(
      homePageNotifierProvider(ProductType.isLimited).select(
        (state) => state.map(
          initial: (_) => _.products.entity[index],
          loadInProgress: (_) => _.products.entity[index],
          loadSuccess: (_) => _.products.entity[index],
          loadFailure: (_) => _.products.entity[index],
        ),
      ),
    );
    return ProductCard(product: product);
  }
}
