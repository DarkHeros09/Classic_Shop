import 'package:classic_shop/src/features/brands/presentation/widgets/brand_chip_row.dart';
import 'package:classic_shop/src/features/categories/presentation/widgets/category_card.dart';
import 'package:classic_shop/src/features/products/core/presentation/widgets/cs_app_bar.dart';
import 'package:classic_shop/src/features/products/core/presentation/widgets/cs_persistance_header.dart';
import 'package:classic_shop/src/features/products/core/presentation/widgets/failure_product_tile.dart';
import 'package:classic_shop/src/features/products/core/shared/providers.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';
import 'package:classic_shop/src/features/products/listed_products/presentation/selected_category/widgets/list_products_grid_view.dart';
import 'package:classic_shop/src/shared/toasts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SelectedCategory extends StatelessWidget {
  const SelectedCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: NestedScrollFirstView(),
      ),
    );
  }
}

class NestedScrollFirstView extends HookConsumerWidget {
  const NestedScrollFirstView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useScrollController();
    final state = ref.watch(listProductsNotifierProvider);
    return NestedScrollView(
      floatHeaderSlivers: true,
      controller: controller,
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        SchedulerBinding.instance.addPostFrameCallback((_) {
          if (state.products.entity.isEmpty) {
            controller.jumpTo(0);
          }
        });
        return [
          SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
              context,
            ),
            sliver: const CSAppBar(),
          ),
        ];
      },
      body: const NestScrollSecondView(),
    );
  }
}

class NestScrollSecondView extends ConsumerStatefulWidget {
  const NestScrollSecondView({super.key});

  @override
  ConsumerState<NestScrollSecondView> createState() =>
      _NestScrollSecondViewState();
}

class _NestScrollSecondViewState extends ConsumerState<NestScrollSecondView> {
  // @override
  // void initState() {
  //   super.initState();
  //   SchedulerBinding.instance.addPostFrameCallback((_) {
  //     ref.read(listProductsNotifierProvider.notifier).getProductsPage();
  //   });
  // }

  bool canLoadNextPage = false;
  bool hasAlreadyShownNoConnectionToast = false;
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(listProductsNotifierProvider);
    ref.listen(listProductsNotifierProvider, (previous, next) {
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
          final categoryId = ref.read(selectedCategoryIdProvider);
          final brandId = ref.read(selectedBrandIdProvider);

          ref.read(listProductsNotifierProvider.notifier).getProductsPage(
                productsFunction: ProductsFunction.getProductsNextPage,
                categoryId: categoryId,
                brandId: brandId,
              );
        }
        return false;
      },
      child: CustomScrollView(
        slivers: [
          SliverOverlapInjector(
            // This is the flip side of the SliverOverlapAbsorber
            // above.
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
              context,
            ),
          ),
          const CSPersistanceHeader(),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            sliver: ListProductsGridView(),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(
            child: state.mapOrNull(
              loadFailure: (_) => FailureProductTile(
                reload: () {
                  //TODO: review this code
                  if (state.products.entity.isEmpty) {
                    ref
                        .read(listProductsNotifierProvider.notifier)
                        .getProductsPage(
                            productsFunction: ProductsFunction.getProducts);
                  } else {
                    ref
                        .read(listProductsNotifierProvider.notifier)
                        .getProductsPage(
                            productsFunction:
                                ProductsFunction.getProductsNextPage);
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
