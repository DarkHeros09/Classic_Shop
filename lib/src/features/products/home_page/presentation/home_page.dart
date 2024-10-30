import 'package:classic_shop/src/features/cart/shared/providers.dart';
import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:classic_shop/src/features/products/core/presentation/widgets/loading_product_card.dart';
import 'package:classic_shop/src/features/products/home_page/application/home_page_notifier.dart';
import 'package:classic_shop/src/features/products/home_page/presentation/widgets/home_page_best_sellers_products_h_list_view.dart';
import 'package:classic_shop/src/features/products/home_page/presentation/widgets/home_page_best_sellers_products_space.dart';
import 'package:classic_shop/src/features/products/home_page/presentation/widgets/home_page_featured_products_h_list_view.dart';
import 'package:classic_shop/src/features/products/home_page/presentation/widgets/home_page_featured_products_space.dart';
import 'package:classic_shop/src/features/products/home_page/presentation/widgets/home_page_new_products_space.dart';
import 'package:classic_shop/src/features/products/home_page/presentation/widgets/home_page_product_card.dart';
import 'package:classic_shop/src/features/products/home_page/presentation/widgets/home_page_sales_products_space%20copy.dart';
import 'package:classic_shop/src/features/products/home_page/presentation/widgets/loading_h_list_name.dart';
import 'package:classic_shop/src/features/products/home_page/presentation/widgets/promoted_product_card.dart';
import 'package:classic_shop/src/features/products/listed_products/presentation/selected_category/widgets/list_products_grid_view.dart';
import 'package:classic_shop/src/features/promotions/presentation/home_page_carousel.dart';
import 'package:classic_shop/src/features/promotions/shared/provider.dart';
import 'package:classic_shop/src/features/text_banner/presentation/text_banner.dart';
import 'package:classic_shop/src/features/text_banner/shared/providers.dart';
import 'package:classic_shop/src/features/wish_list/shared/providers.dart';
import 'package:classic_shop/src/helpers/locale_extension.dart';
import 'package:classic_shop/src/themes/assets.dart';
import 'package:classic_shop/src/themes/theme_mode_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jovial_svg/jovial_svg.dart';

class HomePage extends ConsumerWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        body: RefreshIndicator.adaptive(
          onRefresh: () async {
            // ref
            //   ..invalidate(productCardIndexProvider)
            //   ..invalidate(paginatedProductsNotifierProvider);
            ref.read(textBannerNotifierProvider).textBanners.entity.clear();
            ref
                .read(homePageNotifierProvider(ProductType.isNew))
                .products
                .entity
                .clear();
            ref
                .read(homePageNotifierProvider(ProductType.isPromoted))
                .products
                .entity
                .clear();
            ref
                .read(homePageNotifierProvider(ProductType.isFeatured))
                .products
                .entity
                .clear();
            // ref
            //     .read(homePageNotifierProvider(ProductType.isPromoted))
            //     .promotedProducts
            //     .entity
            //     .clear();
            await Future.wait([
              ref.read(textBannerNotifierProvider.notifier).fetchTextBanner(),
              ref
                  .read(homePageNotifierProvider(ProductType.isNew).notifier)
                  .getPage(
                    pageSize: 6,
                    isNew: true,
                  ),
              ref
                  .read(
                    homePageNotifierProvider(ProductType.isPromoted).notifier,
                  )
                  .getPage(
                    pageSize: 6,
                    isPromoted: true,
                  ),
              ref
                  .read(
                    homePageNotifierProvider(ProductType.isFeatured).notifier,
                  )
                  .getPage(
                    pageSize: 6,
                    isFeatured: true,
                  ),
              ref
                  .read(
                    homePageNotifierProvider(ProductType.isBestSellers)
                        .notifier,
                  )
                  .getBestSellers(
                    pageSize: 6,
                  ),
              ref.read(promotionsNotifierProvider.notifier).getPromotions(),
            ]);
          },
          child: const CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 16,
                ),
              ),
              HomePageHeader(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              TextBanner(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 8,
                ),
              ),
              HomePageCarousel(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 8,
                ),
              ),
              HomePageCarouselIndicator(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                sliver: HomePageHListName(),
              ),
              // if (itemCount > 0)
              HomePageNewProductsSpace(height: 8),
              HomePageNewProductsHListView(),
              HomePageNewProductsSpace(height: 16),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                sliver: HomePageSalesHListName(),
              ),
              HomePageSalesProductsSpace(height: 8),
              HomePagePromotedProductsHListView(),
              HomePageSalesProductsSpace(height: 16),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                sliver: HomePageFeaturedHListName(),
              ),
              HomePageFeaturedProductsSpace(height: 8),
              HomePageFeaturedProductsHListView(),
              HomePageFeaturedProductsSpace(height: 16),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                sliver: HomePageBestSellersHListName(),
              ),
              HomePageBestSellersProductsSpace(height: 8),
              HomePageBestSellersProductsHListView(),
              HomePageBestSellersProductsSpace(height: 16),
              // HomePageNewProductsHListView(key: ValueKey('ProductList2')),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePageBestSellersHListName extends HookConsumerWidget {
  const HomePageBestSellersHListName({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state =
        ref.watch(homePageNotifierProvider(ProductType.isBestSellers));
    final appTheme = Theme.of(context);
    final itemCount = ref.watch(
      homePageNotifierProvider(ProductType.isBestSellers).select(
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
      child: state.map(
        initial: (_) => const SizedBox.shrink(),
        loadInProgress: (_) => const LoadingHListName(),
        loadSuccess: (_) => itemCount > 0
            ? Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    context.loc.best_sellers,
                    style: appTheme.textTheme.bodyLarge
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  Text(
                    context.loc.all,
                    style: appTheme.textTheme.labelMedium,
                  ),
                ],
              )
            : const SizedBox.shrink(),
        loadFailure: (_) => const SizedBox.shrink(),
      ),
    );
  }
}

class HomePageFeaturedHListName extends HookConsumerWidget {
  const HomePageFeaturedHListName({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homePageNotifierProvider(ProductType.isFeatured));
    final appTheme = Theme.of(context);
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
      child: state.map(
        initial: (_) => const SizedBox.shrink(),
        loadInProgress: (_) => const LoadingHListName(),
        loadSuccess: (_) => itemCount > 0
            ? Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    context.loc.featured_products,
                    style: appTheme.textTheme.bodyLarge
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  Text(
                    context.loc.all,
                    style: appTheme.textTheme.labelMedium,
                  ),
                ],
              )
            : const SizedBox.shrink(),
        loadFailure: (_) => const SizedBox.shrink(),
      ),
    );
  }
}

class HomePageSalesHListName extends HookConsumerWidget {
  const HomePageSalesHListName({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homePageNotifierProvider(ProductType.isPromoted));
    final appTheme = Theme.of(context);
    final itemCount = ref.watch(
      homePageNotifierProvider(ProductType.isPromoted).select(
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
      child: state.map(
        initial: (_) => const SizedBox.shrink(),
        loadInProgress: (_) => const LoadingHListName(),
        loadSuccess: (_) => itemCount > 0
            ? Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'التخفيضات',
                    style: appTheme.textTheme.bodyLarge
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  Text(
                    context.loc.all,
                    style: appTheme.textTheme.labelMedium,
                  ),
                ],
              )
            : const SizedBox.shrink(),
        loadFailure: (_) => const SizedBox.shrink(),
      ),
    );
  }
}

class HomePageHListName extends HookConsumerWidget {
  const HomePageHListName({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homePageNotifierProvider(ProductType.isNew));
    final itemCount = ref.watch(
      homePageNotifierProvider(ProductType.isNew).select(
        (value) => value.map(
          initial: (_) => 0,
          loadInProgress: (_) => 6,
          loadSuccess: (_) =>
              _.products.entity.length > 6 ? 6 : _.products.entity.length,
          loadFailure: (_) => _.products.entity.length + 1,
        ),
      ),
    );
    final appTheme = Theme.of(context);
    return SliverToBoxAdapter(
      child: state.map(
        initial: (_) => const SizedBox.shrink(),
        loadInProgress: (_) => const LoadingHListName(),
        loadSuccess: (_) => itemCount > 0
            ? Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    context.loc.new_products,
                    style: appTheme.textTheme.bodyLarge!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  Text(
                    context.loc.all,
                    style: appTheme.textTheme.labelMedium,
                  ),
                ],
              )
            : const SizedBox.shrink(),
        loadFailure: (_) => const SizedBox.shrink(),
      ),
    );
  }
}

// final homeProductCardIndexProvider =
//     Provider<int>((_) => throw UnimplementedError());

class HomePageNewProductsHListView extends ConsumerStatefulWidget {
  const HomePageNewProductsHListView({super.key});

  @override
  ConsumerState<HomePageNewProductsHListView> createState() =>
      _HomePageNewProductsHListViewState();
}

class _HomePageNewProductsHListViewState
    extends ConsumerState<HomePageNewProductsHListView> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Future.wait([
        ref.read(homePageNotifierProvider(ProductType.isNew).notifier).getPage(
              pageSize: 6,
              isNew: true,
            ),
        ref.read(cartNotifierProvider.notifier).fetchCart(),
        ref.read(wishListNotifierProvider.notifier).fetchWishList(),
      ]);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homePageNotifierProvider(ProductType.isNew));
    final itemCount = ref.watch(
      homePageNotifierProvider(ProductType.isNew).select(
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
            overrides: [productCardIndexProvider.overrideWithValue(index)],
            child: state.map(
              initial: (_) => const SizedBox.shrink(),
              loadInProgress: (_) {
                if (index < _.products.entity.length) {
                  return const HomePageProductCard();
                } else {
                  return const LoadingProductCard();
                }
              },
              loadSuccess: (_) => const HomePageProductCard(),
              loadFailure: (_) {
                if (index < _.products.entity.length) {
                  return const HomePageProductCard();
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

final homepagePromotedProductsIndexProvider =
    Provider<int>((_) => throw UnimplementedError());

class HomePagePromotedProductsHListView extends ConsumerStatefulWidget {
  const HomePagePromotedProductsHListView({super.key});

  @override
  ConsumerState<HomePagePromotedProductsHListView> createState() =>
      _HomePagePromotedProductsHListViewState();
}

class _HomePagePromotedProductsHListViewState
    extends ConsumerState<HomePagePromotedProductsHListView> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Future.wait([
        ref
            .read(homePageNotifierProvider(ProductType.isPromoted).notifier)
            .getPage(
              pageSize: 6,
              isPromoted: true,
            ),
      ]);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homePageNotifierProvider(ProductType.isPromoted));
    final itemCount = ref.watch(
      homePageNotifierProvider(ProductType.isPromoted).select(
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
              homepagePromotedProductsIndexProvider.overrideWithValue(index),
            ],
            child: state.map(
              initial: (_) => const SizedBox.shrink(),
              loadInProgress: (_) {
                if (index < _.products.entity.length) {
                  return const PromotedProductCard();
                } else {
                  return const LoadingProductCard();
                }
              },
              loadSuccess: (_) => const PromotedProductCard(),
              loadFailure: (_) {
                if (index < _.products.entity.length) {
                  return const PromotedProductCard();
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

class HomePageHeader extends ConsumerWidget {
  const HomePageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    final logo = isDarkMode
        ? ref.watch(
            darkSiAssetsProvider.select(
              (value) => value
                  .singleWhere((element) => element.$1 == SvgAssets.logo.name)
                  .$2,
            ),
          )
        : ref.watch(
            siAssetsProvider.select(
              (value) => value
                  .singleWhere((element) => element.$1 == SvgAssets.logo.name)
                  .$2,
            ),
          );
    final bell = isDarkMode
        ? ref.watch(
            darkSiAssetsProvider.select(
              (value) => value
                  .singleWhere(
                    (element) => element.$1 == SvgAssets.bell.name,
                  )
                  .$2,
            ),
          )
        : ref.watch(
            siAssetsProvider.select(
              (value) => value
                  .singleWhere(
                    (element) => element.$1 == SvgAssets.bell.name,
                  )
                  .$2,
            ),
          );
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverToBoxAdapter(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  child: InkWell(
                    onTap: ref.read(themeModeProvider.notifier).changeTheme,
                    child: ScalableImageWidget(si: logo),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                    onPressed: () => ref
                        .read(responseHeaderCacheProvider)
                        .deleteAllHeaders(),
                    style: ElevatedButton.styleFrom(
                      // fixedSize: const Size(48, 48),
                      minimumSize: const Size(56, 56),
                      // maximumSize: const Size(48, 48),
                      // backgroundColor: const Color(0xFF000000),
                      elevation: 0,
                      padding: EdgeInsets.zero,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                    child: ScalableImageWidget(si: bell),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
