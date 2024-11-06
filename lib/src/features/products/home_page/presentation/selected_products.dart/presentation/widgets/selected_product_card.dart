import 'package:classic_shop/src/features/products/core/presentation/widgets/product_card.dart';
import 'package:classic_shop/src/features/products/home_page/application/home_page_notifier.dart';
import 'package:classic_shop/src/features/products/home_page/presentation/selected_products.dart/application/selected_products_notifier.dart';
import 'package:classic_shop/src/features/products/home_page/presentation/selected_products.dart/presentation/widgets/selected_products_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SelectedProductCard extends ConsumerWidget {
  const SelectedProductCard({
    required this.productType,
    super.key,
  });

  final ProductType productType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(selectedProductCardIndexProvider);
    final product = ref.watch(
      selectedProductsNotifierProvider(productType).select(
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
