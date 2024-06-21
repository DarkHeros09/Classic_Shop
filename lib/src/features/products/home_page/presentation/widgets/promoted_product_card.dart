import 'package:classic_shop/src/features/products/core/presentation/widgets/product_card.dart';
import 'package:classic_shop/src/features/products/home_page/presentation/home_page.dart';
import 'package:classic_shop/src/features/products/home_page/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PromotedProductCard extends ConsumerWidget {
  const PromotedProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(homepagePromotedProductsIndexProvider);
    final product = ref.watch(
      promotedProductsNotifierProvider.select(
        (state) => state.map(
          initial: (_) => _.promotedProducts.entity[index],
          loadInProgress: (_) => _.promotedProducts.entity[index],
          loadSuccess: (_) => _.promotedProducts.entity[index],
          loadFailure: (_) => _.promotedProducts.entity[index],
        ),
      ),
    );
    return ProductCard(product: product);
  }
}
