import 'package:classic_shop/src/features/products/core/presentation/widgets/loading_product_card.dart';
import 'package:classic_shop/src/features/products/home_page/application/home_page_notifier.dart';
import 'package:classic_shop/src/features/products/home_page/presentation/selected_products.dart/application/selected_products_notifier.dart';
import 'package:classic_shop/src/features/products/home_page/presentation/selected_products.dart/presentation/widgets/selected_product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final selectedProductCardIndexProvider =
    Provider<int>((_) => throw UnimplementedError());

class SelectedProductsGridView extends ConsumerWidget {
  const SelectedProductsGridView({
    required this.productType,
    super.key,
  });

  final ProductType productType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(selectedProductsNotifierProvider(productType));
    final itemCount = ref.watch(
      selectedProductsNotifierProvider(productType).select(
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
          overrides: [
            selectedProductCardIndexProvider.overrideWithValue(index)
          ],
          child: state.map(
            initial: (_) => const SizedBox.shrink(),
            loadInProgress: (_) {
              if (index < _.products.entity.length) {
                return SelectedProductCard(
                  productType: productType,
                );
              } else {
                return const LoadingProductCard();
              }
            },
            loadSuccess: (_) => SelectedProductCard(
              productType: productType,
            ),
            loadFailure: (_) {
              if (index < _.products.entity.length) {
                return SelectedProductCard(
                  productType: productType,
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
