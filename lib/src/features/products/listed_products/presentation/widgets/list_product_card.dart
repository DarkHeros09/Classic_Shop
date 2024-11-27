import 'package:classic_shop/src/features/products/core/presentation/widgets/product_card.dart';
import 'package:classic_shop/src/features/products/listed_products/application/list_products_notifier.dart';
import 'package:classic_shop/src/features/products/listed_products/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ListProductCard extends ConsumerWidget {
  const ListProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(productCardIndexProvider);
    final product = ref.watch(
      listProductsNotifierProvider.select(
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
