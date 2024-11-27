import 'package:classic_shop/src/features/products/core/presentation/widgets/failure_product_tile.dart';
import 'package:classic_shop/src/features/products/searched_products/application/searched_products_notifier.dart';
import 'package:classic_shop/src/features/products/searched_products/presentation/widgets/searched_products_grid_view.dart';
import 'package:classic_shop/src/features/products/searched_products/search_bar/presentation/widgets/search_bar.dart';
import 'package:classic_shop/src/features/products/searched_products/shared/provider.dart';
import 'package:classic_shop/src/shared/toasts.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({super.key});

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  late String query;
  bool canLoadNextPage = false;
  bool hasAlreadyShownNoConnectionToast = false;
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(searchedProductsNotifierProvider);
    ref.listen(searchedProductsNotifierProvider, (previous, next) {
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
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 56 + 16 + 16),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  height: 56,
                  width: double.infinity,
                  child: CustomSearchBar(
                    showBackButton: true,
                    autofocus: true,
                    onSubmitted: (value) async {
                      query = value;
                      ref
                        ..read(searchedProductsNotifierProvider)
                            .products
                            .entity
                            .clear()
                        // state.products.entity.clear();
                        ..invalidate(searchedProductCardIndexProvider);
                      // ..invalidate(paginatedProductsNotifierProvider);
                      await ref
                          .read(searchedProductsNotifierProvider.notifier)
                          .searchProductsPage(value);
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          final metrics = notification.metrics;
          final limit = metrics.maxScrollExtent - metrics.viewportDimension / 3;
          if (canLoadNextPage && metrics.pixels >= limit) {
            canLoadNextPage = false;
            ref
                .read(searchedProductsNotifierProvider.notifier)
                .searchProductsNextPage(query);
          }
          return false;
        },
        child: CustomScrollView(
          slivers: [
            const SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              sliver: SearchedProductsGridView(),
            ),
            SliverToBoxAdapter(
              child: state.mapOrNull(
                loadFailure: (_) => FailureProductTile(
                  reload: () {
                    if (state.products.entity.isEmpty) {
                      ref
                          .read(searchedProductsNotifierProvider.notifier)
                          .searchProductsPage(query);
                    } else {
                      ref
                          .read(searchedProductsNotifierProvider.notifier)
                          .searchProductsNextPage(query);
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
