import 'package:classic_shop/src/features/products/home_page/application/home_page_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePageBestSellersProductsSpace extends HookConsumerWidget {
  const HomePageBestSellersProductsSpace({required this.height, super.key});

  final double height;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemCount = ref.watch(
      homePageNotifierProvider(ProductType.isBestSellers).select(
        (value) => value.map(
          initial: (_) => 0,
          loadInProgress: (_) => 6,
          loadSuccess: (_) => _.products.entity.length,
          loadFailure: (_) => _.products.entity.length,
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
