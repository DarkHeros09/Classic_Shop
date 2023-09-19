import 'package:classic_shop/src/features/products/core/presentation/widgets/under_app_bar_options.dart';
import 'package:classic_shop/src/features/products/core/shared/providers.dart';
import 'package:classic_shop/src/features/products/searched_products/search_bar/presentation/widgets/search_bar.dart';
import 'package:classic_shop/src/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final isProductEmptyProvider = AutoDisposeProvider((ref) {
  return ref.watch(listProductsNotifierProvider).products.entity.isEmpty;
});

class CSAppBar extends ConsumerStatefulWidget {
  const CSAppBar({
    super.key,
  });

  @override
  ConsumerState<CSAppBar> createState() => _CSAppBarState();
}

class _CSAppBarState extends ConsumerState<CSAppBar> {
  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    final isPinned = ref.watch(isProductEmptyProvider);
    return SliverAppBar(
      backgroundColor: isDarkMode ? const Color(0xFF121212) : Colors.white,
      toolbarHeight: 0,
      pinned: isPinned,
      bottom: const PreferredSize(
        preferredSize: Size(double.infinity, 121),
        child: AppBarPreferredSizeWidget(),
      ),
      surfaceTintColor: Colors.white,
    );
  }
}

class AppBarPreferredSizeWidget extends StatelessWidget {
  const AppBarPreferredSizeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
              readOnly: true,
              onTap: () => context.pushNamed(AppRoute.search.name),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const UnderAppBarOptions(),
      ],
    );
  }
}
