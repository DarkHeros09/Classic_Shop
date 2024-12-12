import 'package:classic_shop/src/features/products/core/domain/promotion.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';
import 'package:classic_shop/src/features/products/listed_products/application/list_products_notifier.dart';
import 'package:classic_shop/src/features/promotions/domain/promotion_type.dart';
import 'package:classic_shop/src/features/promotions/presentation/widgets/selected_carousel_grid_view.dart';
import 'package:classic_shop/src/routing/app_router.dart';
import 'package:classic_shop/src/shared/toasts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePageCarouselDetails extends StatefulHookConsumerWidget {
  const HomePageCarouselDetails({
    required this.id,
    this.promotionType,
    super.key,
  });
  final int id;
  final PromotionType? promotionType;

  @override
  ConsumerState<HomePageCarouselDetails> createState() =>
      _HomePageCarouselDetailsState();
}

class _HomePageCarouselDetailsState
    extends ConsumerState<HomePageCarouselDetails> {
  @override
  void initState() {
    super.initState();
    debugPrint('ZXCV: ${widget.promotionType}');
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (widget.promotionType != null) {
        switch (widget.promotionType!) {
          case PromotionType.product:
            ref.read(listProductsNotifierProvider.notifier).getProductsPage(
                  productsFunction: ProductsFunction.getProductsWithPromotions,
                  productId: widget.id,
                );
          case PromotionType.brand:
            ref.read(listProductsNotifierProvider.notifier).getProductsPage(
                  productsFunction:
                      ProductsFunction.getProductsWithBrandPromotions,
                  brandId: widget.id,
                );
          case PromotionType.category:
            ref.read(listProductsNotifierProvider.notifier).getProductsPage(
                  productsFunction:
                      ProductsFunction.getProductsWithCategoryPromotions,
                  categoryId: widget.id,
                );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: CarouselGridView(
        id: widget.id,
        promotionType: widget.promotionType!,
      ),
    );
  }
}

class CarouselGridView extends ConsumerStatefulWidget {
  const CarouselGridView({
    required this.id,
    required this.promotionType,
    super.key,
  });

  final int id;
  final PromotionType promotionType;
  @override
  ConsumerState<CarouselGridView> createState() => _CarouselGridViewState();
}

class _CarouselGridViewState extends ConsumerState<CarouselGridView> {
  bool canLoadNextPage = false;
  bool hasAlreadyShownNoConnectionToast = false;
  @override
  Widget build(BuildContext context) {
    final itemCount = ref.watch(listProductsNotifierProvider).map(
          initial: (_) => 0,
          loadInProgress: (_) => _.products.entity.isEmpty
              ? 0
              : _.products.entity.length + _.itemsPerPage,
          loadSuccess: (_) => _.products.entity.length,
          loadFailure: (_) => _.products.entity.length + 1,
        );
    ref.listen(listProductsNotifierProvider, (previous, next) {
      debugPrint('ssddss listening');
      next.map(
        initial: (_) => canLoadNextPage = true,
        loadInProgress: (_) => canLoadNextPage = false,
        loadSuccess: (_) {
          if (!_.products.isFresh && !hasAlreadyShownNoConnectionToast) {
            hasAlreadyShownNoConnectionToast = true;
            showNoConnectionToast(
              'لقد فقدت الاتصال بالانترنت, بعض البيانات قد لا تكون حديثة.',
              context,
            );
          }
          canLoadNextPage = _.isNextPageAvailable;
          if (_.products.entity.length == 1) {
            final product = ref.watch(
              listProductsNotifierProvider.select(
                (state) => state.map(
                  initial: (_) => _.products.entity.first,
                  loadInProgress: (_) => _.products.entity.first,
                  loadSuccess: (_) => _.products.entity.first,
                  loadFailure: (_) => _.products.entity.first,
                ),
              ),
            );

            int discount() {
              late final promos = <Promotion>[];
              if (product.productPromoDiscountRate != null) {
                promos.add(
                  Promotion(
                    promoId: product.productPromoId,
                    promoName: product.productPromoName,
                    promoDescription: product.productPromoDescription,
                    promoDiscountRate: product.productPromoDiscountRate,
                    promoActive: product.productPromoActive,
                    promoStartDate: product.productPromoStartDate,
                    promoEndDate: product.productPromoEndDate,
                  ),
                );
              }
              if (product.categoryPromoDiscountRate != null) {
                promos.add(
                  Promotion(
                    promoId: product.categoryPromoId,
                    promoName: product.categoryPromoName,
                    promoDescription: product.categoryPromoDescription,
                    promoDiscountRate: product.categoryPromoDiscountRate,
                    promoActive: product.categoryPromoActive,
                    promoStartDate: product.categoryPromoStartDate,
                    promoEndDate: product.categoryPromoEndDate,
                  ),
                );
              }
              if (product.brandPromoDiscountRate != null) {
                promos.add(
                  Promotion(
                    promoId: product.brandPromoId,
                    promoName: product.brandPromoName,
                    promoDescription: product.brandPromoDescription,
                    promoDiscountRate: product.brandPromoDiscountRate,
                    promoActive: product.brandPromoActive,
                    promoStartDate: product.brandPromoStartDate,
                    promoEndDate: product.brandPromoEndDate,
                  ),
                );
              }

              final validPromo = promos.where(
                (promo) =>
                    promo.promoActive != null &&
                    promo.promoActive! &&
                    DateTime.now().isAfter(promo.promoStartDate!) &&
                    DateTime.now().isBefore(promo.promoEndDate!),
              );

              if (validPromo.isEmpty) return 0;
              final bestPromo = validPromo.reduce(
                (currentBest, nextPromo) => nextPromo.promoDiscountRate! >
                        currentBest.promoDiscountRate!
                    ? nextPromo
                    : currentBest,
              );

              return bestPromo.promoDiscountRate!;
            }

            context.goNamed(
              AppRoute.productDetails.name,
              pathParameters: {'id': product.id.toString()},
              extra: (product, discount()),
            );
          }
        },
        loadFailure: (_) => canLoadNextPage = false,
      );
    });
    return SafeArea(
      child: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          final metrics = notification.metrics;
          final limit = metrics.maxScrollExtent - metrics.viewportDimension / 3;
          final isVertical = metrics.axis == Axis.vertical;
          if (canLoadNextPage && metrics.pixels >= limit && isVertical) {
            canLoadNextPage = false;
            WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
              switch (widget.promotionType) {
                case PromotionType.product:
                  break;
                case PromotionType.brand:
                  ref
                      .read(listProductsNotifierProvider.notifier)
                      .getProductsPage(
                        productsFunction: ProductsFunction
                            .getProductsWithBrandPromotionsNextPage,
                        brandId: widget.id,
                      );
                case PromotionType.category:
                  ref
                      .read(listProductsNotifierProvider.notifier)
                      .getProductsPage(
                        productsFunction: ProductsFunction
                            .getProductsWithCategoryPromotionsNextPage,
                        categoryId: widget.id,
                      );
              }
            });
          }
          return false;
        },
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              centerTitle: true,
              collapsedHeight: 64,
              expandedHeight: 112,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                expandedTitleScale: 1,
                centerTitle: true,
                title: itemCount == 0 ? null : const Text('العروض'),
              ),
            ),
            if (itemCount == 0)
              const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(child: CircularProgressIndicator()),
              ),
            if (itemCount > 1) ...[
              const SliverToBoxAdapter(
                child: SizedBox(height: 16),
              ),
              const SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                sliver: SelectedCarouselGridView(),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 16),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
