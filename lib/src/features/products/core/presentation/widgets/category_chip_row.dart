import 'package:classic_shop/src/features/brands/shared/provider.dart';
import 'package:classic_shop/src/features/categories/application/category_notifier.dart';
import 'package:classic_shop/src/features/categories/shared/provider.dart';
import 'package:classic_shop/src/features/products/core/presentation/widgets/category_chip.dart';
import 'package:classic_shop/src/features/products/core/shared/providers.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';
import 'package:classic_shop/src/features/products/listed_products/application/list_products_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CategoryChipRow extends ConsumerStatefulWidget {
  const CategoryChipRow({super.key});

  @override
  ConsumerState<CategoryChipRow> createState() => _CategoryChipRowState();
}

class _CategoryChipRowState extends ConsumerState<CategoryChipRow> {
  late final ScrollController controller;

  @override
  void initState() {
    super.initState();
    controller = ScrollController();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      final selectedCategoryIndex = ref.read(
        categoryChipNotifierProvider.select((value) => value.groupValue),
      );
      final selectedCategoryId = ref.read(selectedCategoryIdProvider);
      final selectedBrandId = ref.read(selectedBrandIdProvider);
      ref.read(listProductsNotifierProvider.notifier).getProductsPage(
            productsFunction: ProductsFunction.getProducts,
            categoryId: selectedCategoryId,
            brandId: selectedBrandId,
          );
      final categories = ref.read(
        categoryNotifierProvider.select((value) => value.categories.entity),
      );

      final decimal = selectedCategoryIndex / categories.length;
      final sizedBoxSpaces = categories.length + 2;
      controller.jumpTo(
        decimal *
            controller.position.maxScrollExtent /
            categories.length *
            sizedBoxSpaces,
      );
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final categories = ref.watch(
      categoryNotifierProvider.select((value) => value.categories.entity),
    );
    return ListView.separated(
      controller: controller,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      separatorBuilder: (context, index) {
        return const SizedBox(
          width: 8,
        );
      },
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        // final categoryId = ref.watch(selectedCategoryIdProvider);
        return CategoryChip(
          categoryText: categories[index].categoryName,
          categoryValue: index,
          onPressed: () {
            final brandId = ref.read(selectedBrandIdProvider);
            ref
                .read(selectedCategoryIdProvider.notifier)
                .setId(categories[index].id);
            ref.read(categoryChipNotifierProvider.notifier).groupValue(index);
            ref.read(listProductsNotifierProvider).products.entity.clear();
            final selectedSortOption = ref.watch(
              sortOptionsNotifierProvider.select(
                (value) => value.groupValue,
              ),
            );
            switch (selectedSortOption) {
              case 'recommended':
                ref.read(listProductsNotifierProvider.notifier).getProductsPage(
                      productsFunction: ProductsFunction.getProducts,
                      categoryId: categories[index].id,
                      brandId: brandId,
                    );
              case 'new':
                ref.read(listProductsNotifierProvider.notifier).getProductsPage(
                      productsFunction: ProductsFunction.getProducts,
                      categoryId: categories[index].id,
                      brandId: brandId,
                      orderByNew: true,
                    );
              case 'old':
                ref.read(listProductsNotifierProvider.notifier).getProductsPage(
                      productsFunction: ProductsFunction.getProducts,
                      categoryId: categories[index].id,
                      brandId: brandId,
                      orderByOld: true,
                    );
              case 'priceDesc':
                ref.read(listProductsNotifierProvider.notifier).getProductsPage(
                      productsFunction: ProductsFunction.getProducts,
                      categoryId: categories[index].id,
                      brandId: brandId,
                      orderByHighPrice: true,
                    );
              case 'priceAsc':
                ref.read(listProductsNotifierProvider.notifier).getProductsPage(
                      productsFunction: ProductsFunction.getProducts,
                      categoryId: categories[index].id,
                      brandId: brandId,
                      orderByLowPrice: true,
                    );
            }
          },
        );
      },
    );
  }
}


// class CategoryChipRow1 extends StatefulHookConsumerWidget {
//   const CategoryChipRow1({super.key});

//   @override
//   ConsumerState<CategoryChipRow1> createState() => _CategoryChipRow1State();
// }

// class _CategoryChipRow1State extends ConsumerState<CategoryChipRow1> {

  
// @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       child: TabBar(tabs: [
//         ListView.builder(itemBuilder: (context, index) => Tab(),)
//       ]),
//     );
//   }
// }