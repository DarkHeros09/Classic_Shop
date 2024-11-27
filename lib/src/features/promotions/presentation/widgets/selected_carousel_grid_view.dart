import 'package:classic_shop/src/features/products/core/presentation/widgets/loading_product_card.dart';
import 'package:classic_shop/src/features/products/listed_products/application/list_products_notifier.dart';
import 'package:classic_shop/src/features/promotions/presentation/widgets/carouselProductCard.dart';
import 'package:classic_shop/src/features/promotions/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SelectedCarouselGridView extends ConsumerWidget {
  const SelectedCarouselGridView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(listProductsNotifierProvider);
    final itemCount = ref.watch(listProductsNotifierProvider).map(
          initial: (_) => 0,
          loadInProgress: (_) => _.products.entity.length + _.itemsPerPage,
          loadSuccess: (_) => _.products.entity.length,
          loadFailure: (_) => _.products.entity.length + 1,
        );
    return SliverAlignedGrid.count(
      key: UniqueKey(),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return ProviderScope(
          key: UniqueKey(),
          overrides: [
            carouselProductCardIndexProvider.overrideWithValue(index),
          ],
          child: state.map(
            initial: (_) => const SizedBox.shrink(),
            loadInProgress: (_) {
              if (index < _.products.entity.length) {
                return const CarouselProductCard();
              } else {
                return const LoadingProductCard();
              }
            },
            loadSuccess: (_) => const CarouselProductCard(),
            loadFailure: (_) {
              if (index < _.products.entity.length) {
                return const CarouselProductCard();
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
