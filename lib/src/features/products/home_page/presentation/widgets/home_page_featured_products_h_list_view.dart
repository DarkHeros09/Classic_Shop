import 'package:classic_shop/src/features/products/core/presentation/widgets/loading_product_card.dart';
import 'package:classic_shop/src/features/products/home_page/application/home_page_notifier.dart';
import 'package:classic_shop/src/features/products/home_page/presentation/widgets/home_page_featured_product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homepageFeaturedProductsIndexProvider =
    Provider<int>((_) => throw UnimplementedError());

class HomePageFeaturedProductsHListView extends ConsumerStatefulWidget {
  const HomePageFeaturedProductsHListView({super.key});

  @override
  ConsumerState<HomePageFeaturedProductsHListView> createState() =>
      _HomePageFeaturedProductsHListViewState();
}

class _HomePageFeaturedProductsHListViewState
    extends ConsumerState<HomePageFeaturedProductsHListView> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Future.wait([
        ref
            .read(homePageNotifierProvider(ProductType.isFeatured).notifier)
            .getPage(
              pageSize: 6,
              isFeatured: true,
            ),
      ]);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homePageNotifierProvider(ProductType.isFeatured));
    final itemCount = ref.watch(
      homePageNotifierProvider(ProductType.isFeatured).select(
        (value) => value.map(
          initial: (_) => 0,
          loadInProgress: (_) => 6,
          loadSuccess: (_) =>
              _.products.entity.length > 6 ? 6 : _.products.entity.length,
          loadFailure: (_) => _.products.entity.length + 1,
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
              homepageFeaturedProductsIndexProvider.overrideWithValue(index),
            ],
            child: state.map(
              initial: (_) => const SizedBox.shrink(),
              loadInProgress: (_) {
                if (index < _.products.entity.length) {
                  return const FeaturedProductCard();
                } else {
                  return const LoadingProductCard();
                }
              },
              loadSuccess: (_) => const FeaturedProductCard(),
              loadFailure: (_) {
                if (index < _.products.entity.length) {
                  return const FeaturedProductCard();
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