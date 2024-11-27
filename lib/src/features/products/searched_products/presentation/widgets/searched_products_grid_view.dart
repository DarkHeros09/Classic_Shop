import 'package:classic_shop/src/features/products/core/presentation/widgets/loading_product_card.dart';
import 'package:classic_shop/src/features/products/core/presentation/widgets/product_card.dart';
import 'package:classic_shop/src/features/products/searched_products/application/searched_products_notifier.dart';
import 'package:classic_shop/src/features/products/searched_products/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchedProductsGridView extends ConsumerWidget {
  const SearchedProductsGridView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(searchedProductsNotifierProvider);
    return SliverAlignedGrid.count(
      itemCount: state.map(
        initial: (_) => 0,
        loadInProgress: (_) => _.products.entity.length + _.itemsPerPage,
        loadSuccess: (_) => _.products.entity.length,
        loadFailure: (_) => _.products.entity.length + 1,
      ),
      itemBuilder: (context, index) {
        return ProviderScope(
          key: UniqueKey(),
          overrides: [
            searchedProductCardIndexProvider.overrideWithValue(index),
          ],
          child: state.map(
            initial: (_) => const SizedBox.shrink(),
            loadInProgress: (_) {
              if (index < _.products.entity.length) {
                return ProductCard(
                  product: _.products.entity[index],
                );
              } else {
                return const LoadingProductCard();
              }
            },
            loadSuccess: (_) {
              if (_.products.entity.isEmpty) {
                return const SizedBox.shrink();
              }
              return ProductCard(
                product: _.products.entity[index],
              );
            },
            loadFailure: (_) {
              if (index < _.products.entity.length) {
                return ProductCard(
                  product: _.products.entity[index],
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
        );
      },
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 16,
    );
  }
}
