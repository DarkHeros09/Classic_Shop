import 'package:classic_shop/src/features/products/home_page/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePageSalesProductsSpace extends HookConsumerWidget {
  const HomePageSalesProductsSpace({required this.height, super.key});

  final double height;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemCount = ref.watch(
      promotedProductsNotifierProvider.select(
        (value) => value.map(
          initial: (_) => 0,
          loadInProgress: (_) => 6,
          loadSuccess: (_) => _.promotedProducts.entity.length > 6
              ? 6
              : _.promotedProducts.entity.length,
          loadFailure: (_) => _.promotedProducts.entity.length + 1,
        ),
      ),
    );
    return SliverToBoxAdapter(
      child: SizedBox(
        height: itemCount > 0 ? height : 0,
      ),
    );
  }
}
