import 'package:classic_shop/src/features/products/core/presentation/widgets/loading_product_card.dart';
import 'package:classic_shop/src/features/products/home_page/application/home_page_notifier.dart';
import 'package:classic_shop/src/features/products/home_page/presentation/widgets/home_page_best_sellers_product_card.dart';
import 'package:classic_shop/src/features/products/home_page/presentation/widgets/products_show_all_card.dart';
import 'package:classic_shop/src/features/products/home_page/shared/providers.dart';
import 'package:classic_shop/src/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePageBestSellersProductsHListView extends ConsumerStatefulWidget {
  const HomePageBestSellersProductsHListView({super.key});

  @override
  ConsumerState<HomePageBestSellersProductsHListView> createState() =>
      _HomePageBestSellersProductsHListViewState();
}

class _HomePageBestSellersProductsHListViewState
    extends ConsumerState<HomePageBestSellersProductsHListView> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Future.wait([
        ref
            .read(homePageNotifierProvider(ProductType.isBestSellers).notifier)
            .getBestSellers(
              pageSize: 7,
            ),
      ]);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state =
        ref.watch(homePageNotifierProvider(ProductType.isBestSellers));
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
        height: itemCount > 0 ? 300 : 0,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => ProviderScope(
            key: UniqueKey(),
            overrides: [
              homepageProductsIndexProvider(ProductType.isBestSellers)
                  .overrideWithValue(index),
            ],
            child: state.map(
              initial: (_) => const SizedBox.shrink(),
              loadInProgress: (_) {
                if (index < _.products.entity.length) {
                  return const BestSellersProductCard();
                } else {
                  return const LoadingProductCard();
                }
              },
              loadSuccess: (_) {
                if (index < 6) {
                  return const BestSellersProductCard();
                }
                return ProductsShowAllCard(
                  onTap: () => context.goNamed(
                    AppRoute.selectedProducts.name,
                    extra: ProductType.isBestSellers,
                  ),
                );
              },
              loadFailure: (_) {
                if (index < _.products.entity.length) {
                  return const BestSellersProductCard();
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(
            width: 16,
          ),
          itemCount: itemCount,
        ),
      ),
    );
  }
}
