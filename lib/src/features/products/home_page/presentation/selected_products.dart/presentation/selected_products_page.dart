import 'package:classic_shop/src/features/products/core/presentation/widgets/failure_product_tile.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';
import 'package:classic_shop/src/features/products/home_page/application/home_page_notifier.dart';
import 'package:classic_shop/src/features/products/home_page/presentation/selected_products.dart/application/selected_products_notifier.dart';
import 'package:classic_shop/src/features/products/home_page/presentation/selected_products.dart/presentation/widgets/selected_products_grid_view.dart';
import 'package:classic_shop/src/helpers/locale_extension.dart';
import 'package:classic_shop/src/shared/toasts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SelectedProductsPage extends ConsumerStatefulWidget {
  const SelectedProductsPage({
    required this.productType,
    super.key,
  });

  final ProductType productType;

  @override
  ConsumerState<SelectedProductsPage> createState() =>
      _SelectedProductsPageState();
}

class _SelectedProductsPageState extends ConsumerState<SelectedProductsPage> {
  late String text = '';
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      switch (widget.productType) {
        case ProductType.isNew:
          text = context.loc.new_products;
          ref
              .read(
                selectedProductsNotifierProvider(widget.productType).notifier,
              )
              .getPage(
                productsFunction: ProductsFunction.getProducts,
                isNew: true,
              );
        case ProductType.isPromoted:
          text = context.loc.sales;
          ref
              .read(
                selectedProductsNotifierProvider(widget.productType).notifier,
              )
              .getPage(
                productsFunction: ProductsFunction.getProducts,
                isPromoted: true,
              );
        case ProductType.isFeatured:
          text = context.loc.featured_products;
          ref
              .read(
                selectedProductsNotifierProvider(widget.productType).notifier,
              )
              .getPage(
                productsFunction: ProductsFunction.getProducts,
                isFeatured: true,
              );
        case ProductType.isBestSellers:
          text = context.loc.best_sellers;
          ref
              .read(
                selectedProductsNotifierProvider(widget.productType).notifier,
              )
              .getPage(
                productsFunction: ProductsFunction.getBestSellers,
                pageSize: 50,
              );
        case ProductType.isLimited:
          text = context.loc.limited_quantity;
          ref
              .read(
                selectedProductsNotifierProvider(widget.productType).notifier,
              )
              .getPage(
                productsFunction: ProductsFunction.getProducts,
                isLimited: true,
              );
      }
    });
  }

  bool canLoadNextPage = false;
  bool hasAlreadyShownNoConnectionToast = false;
  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    final state =
        ref.watch(selectedProductsNotifierProvider(widget.productType));
    ref.listen(selectedProductsNotifierProvider(widget.productType),
        (previous, next) {
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
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        final metrics = notification.metrics;
        final limit = metrics.maxScrollExtent - metrics.viewportDimension / 3;
        final isVertical = metrics.axis == Axis.vertical;
        if (canLoadNextPage && metrics.pixels >= limit && isVertical) {
          canLoadNextPage = false;
          switch (widget.productType) {
            case ProductType.isNew:
              ref
                  .read(
                    selectedProductsNotifierProvider(widget.productType)
                        .notifier,
                  )
                  .getPage(
                    productsFunction: ProductsFunction.getProductsNextPage,
                    isNew: true,
                  );
            case ProductType.isPromoted:
              ref
                  .read(
                    selectedProductsNotifierProvider(widget.productType)
                        .notifier,
                  )
                  .getPage(
                    productsFunction: ProductsFunction.getProductsNextPage,
                    isPromoted: true,
                  );
            case ProductType.isFeatured:
              ref
                  .read(
                    selectedProductsNotifierProvider(widget.productType)
                        .notifier,
                  )
                  .getPage(
                    productsFunction: ProductsFunction.getProductsNextPage,
                    isFeatured: true,
                  );
            case ProductType.isBestSellers:
              break;
            case ProductType.isLimited:
              ref
                  .read(
                    selectedProductsNotifierProvider(widget.productType)
                        .notifier,
                  )
                  .getPage(
                    productsFunction: ProductsFunction.getProductsNextPage,
                    isLimited: true,
                  );
          }
        }
        return false;
      },
      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                centerTitle: true,
                title: Skeletonizer(
                  enabled: text.isEmpty,
                  child: Text(text, style: appTheme.textTheme.headlineSmall),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 24),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                sliver: SelectedProductsGridView(
                  productType: widget.productType,
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 16)),
              SliverToBoxAdapter(
                child: state.mapOrNull(
                  loadFailure: (_) => FailureProductTile(
                    reload: () {
                      //TODO: review this code
                      if (state.products.entity.isEmpty) {
                        ref
                            .read(
                              selectedProductsNotifierProvider(
                                widget.productType,
                              ).notifier,
                            )
                            .getPage(
                              productsFunction: ProductsFunction.getProducts,
                            );
                      } else {
                        ref
                            .read(
                              selectedProductsNotifierProvider(
                                widget.productType,
                              ).notifier,
                            )
                            .getPage(
                              productsFunction:
                                  ProductsFunction.getProductsNextPage,
                            );
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
