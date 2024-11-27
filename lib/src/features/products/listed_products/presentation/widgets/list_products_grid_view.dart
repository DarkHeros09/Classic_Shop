import 'package:classic_shop/src/features/products/core/presentation/widgets/loading_product_card.dart';
import 'package:classic_shop/src/features/products/listed_products/application/list_products_notifier.dart';
import 'package:classic_shop/src/features/products/listed_products/presentation/widgets/list_product_card.dart';
import 'package:classic_shop/src/features/products/listed_products/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ListProductsGridView extends ConsumerWidget {
  const ListProductsGridView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(listProductsNotifierProvider);
    final itemCount = ref.watch(
      listProductsNotifierProvider.select(
        (value) => value.map(
          initial: (_) => 0,
          loadInProgress: (_) => _.products.entity.length + _.itemsPerPage,
          loadSuccess: (_) => _.products.entity.length,
          loadFailure: (_) => _.products.entity.length + 1,
        ),
      ),
    );
    return SliverAlignedGrid.count(
      key: UniqueKey(),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return ProviderScope(
          key: UniqueKey(),
          overrides: [productCardIndexProvider.overrideWithValue(index)],
          child: state.map(
            initial: (_) => const SizedBox.shrink(),
            loadInProgress: (_) {
              if (index < _.products.entity.length) {
                return const ListProductCard();
              } else {
                return const LoadingProductCard();
              }
            },
            loadSuccess: (_) => const ListProductCard(),
            loadFailure: (_) {
              if (index < _.products.entity.length) {
                return const ListProductCard();
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
