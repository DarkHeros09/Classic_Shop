import 'package:classic_shop/src/features/products/core/domain/promotion.dart';
import 'package:classic_shop/src/features/products/core/shared/providers.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';
import 'package:classic_shop/src/features/products/listed_products/product_detail.dart';
import 'package:classic_shop/src/features/promotions/domain/promotion_type.dart';
import 'package:classic_shop/src/features/promotions/presentation/widgets/selected_carousel_grid_view.dart';
import 'package:classic_shop/src/shared/toasts.dart';
import 'package:flutter/material.dart';
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
    final itemCount = ref.watch(listProductsNotifierProvider).map(
          initial: (_) => 0,
          loadInProgress: (_) => _.products.entity.isEmpty
              ? 0
              : _.products.entity.length + _.itemsPerPage,
          loadSuccess: (_) => _.products.entity.length,
          loadFailure: (_) => _.products.entity.length + 1,
        );
    debugPrint('SDFDF ${widget.promotionType}');
    return SafeArea(
      child: CarouselGridView(
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
        },
        loadFailure: (_) => canLoadNextPage = false,
      );
    });
    return Scaffold(
      body: itemCount == 0
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : itemCount == 1
              ? Builder(
                  builder: (context) {
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
                            promoDiscountRate:
                                product.categoryPromoDiscountRate,
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
                        (currentBest, nextPromo) =>
                            nextPromo.promoDiscountRate! >
                                    currentBest.promoDiscountRate!
                                ? nextPromo
                                : currentBest,
                      );

                      return bestPromo.promoDiscountRate!;
                    }

                    return ProductDetail(
                      product: product,
                      discountValue: discount(),
                    );
                  },
                )
              : NotificationListener<ScrollNotification>(
                  onNotification: (notification) {
                    final metrics = notification.metrics;
                    final limit =
                        metrics.maxScrollExtent - metrics.viewportDimension / 3;
                    final isVertical = metrics.axis == Axis.vertical;
                    if (canLoadNextPage &&
                        metrics.pixels >= limit &&
                        isVertical) {
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
                  child: const CustomScrollView(
                    slivers: [
                      SliverAppBar.medium(
                        centerTitle: true,
                        title: Text('العروض'),
                      ),
                      SliverToBoxAdapter(
                        child: SizedBox(height: 20),
                      ),
                      SliverPadding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        sliver: SelectedCarouselGridView(),
                      ),
                    ],
                  ),
                ),
    );
  }
}
