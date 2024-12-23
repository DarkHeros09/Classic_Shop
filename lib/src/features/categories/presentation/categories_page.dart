import 'package:classic_shop/src/features/categories/application/category_notifier.dart';
import 'package:classic_shop/src/features/categories/presentation/widgets/categories_list_view.dart';
import 'package:classic_shop/src/features/products/core/presentation/widgets/failure_product_tile.dart';
import 'package:classic_shop/src/features/products/searched_products/search_bar/presentation/widgets/search_bar.dart';
import 'package:classic_shop/src/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CategoriesPage extends ConsumerStatefulWidget {
  const CategoriesPage({super.key});

  @override
  ConsumerState<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends ConsumerState<CategoriesPage> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      ref.read(categoryNotifierProvider.notifier).getCategories();
    });
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    final state = ref.watch(categoryNotifierProvider);
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              surfaceTintColor: Colors.transparent,
              toolbarHeight: 0,
              pinned: true,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(115),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      'التصنيفات',
                      style: appTheme.textTheme.headlineSmall,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 56,
                      // width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: CustomSearchBar(
                          readOnly: true,
                          onTap: () => context.pushNamed(AppRoute.search.name),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 24,
              ),
            ),
            const SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              sliver: CategoriesListView(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            SliverToBoxAdapter(
              child: state.mapOrNull(
                loadFailure: (_) => FailureProductTile(
                  reload: () async {
                    await ref
                        .read(categoryNotifierProvider.notifier)
                        .getCategories();
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
