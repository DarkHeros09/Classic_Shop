import 'package:classic_shop/src/features/categories/application/category_notifier.dart';
import 'package:classic_shop/src/features/categories/presentation/widgets/categories_list_view.dart';
import 'package:classic_shop/src/features/categories/presentation/widgets/loading_category_image.dart';
import 'package:classic_shop/src/features/categories/shared/provider.dart';
import 'package:classic_shop/src/features/products/listed_products/application/list_products_notifier.dart';
import 'package:classic_shop/src/routing/app_router.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CategoryCard extends HookConsumerWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    final index = ref.watch(categoryCardIndexProvider);
    final category = ref.watch(
      categoryNotifierProvider.select(
        (state) => state.map(
          initial: (_) => _.categories.entity[index],
          loadInProgress: (_) => _.categories.entity[index],
          loadSuccess: (_) => _.categories.entity[index],
          loadFailure: (_) => _.categories.entity[index],
        ),
      ),
    );
    return InkWell(
      onTap: () {
        ref.read(selectedCategoryIdProvider.notifier).setId(category.id);
        ref.read(categoryChipNotifierProvider.notifier).groupValue(index);
        ref.read(listProductsNotifierProvider).products.entity.clear();
        context.pushNamed(AppRoute.selectedCategory.name);
      },
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      child: Container(
        clipBehavior: Clip.hardEdge,
        // margin: const EdgeInsets.symmetric(horizontal: 16),
        height: 128,
        width: double.infinity,
        decoration: BoxDecoration(
          color: isDarkMode ? const Color(0xFF0D0D0D) : Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color(0x24000000),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  const SizedBox(
                    width: 24,
                  ),
                  Text(
                    category.categoryName,
                    style: appTheme.textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ExtendedImage.network(
                loadStateChanged: (state) {
                  switch (state.extendedImageLoadState) {
                    case LoadState.loading:
                    case LoadState.failed:
                      return const LoadingCategoryImage();
                    case LoadState.completed:
                      return state.completedWidget;
                  }
                },
                fit: BoxFit.cover,
                category.categoryImage,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
