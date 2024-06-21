import 'package:classic_shop/src/features/brands/presentation/widgets/brand_chip_row.dart';
import 'package:classic_shop/src/features/categories/presentation/widgets/category_card.dart';
import 'package:classic_shop/src/features/categories/shared/provider.dart';
import 'package:classic_shop/src/features/products/core/presentation/widgets/category_chip.dart';
import 'package:classic_shop/src/features/products/core/shared/providers.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CategoryChipGroupValue {
  const CategoryChipGroupValue(
    this.groupValue,
  );
  final int groupValue;
}

class CategoryChipNotifier extends Notifier<CategoryChipGroupValue> {
  @override
  CategoryChipGroupValue build() {
    return const CategoryChipGroupValue(0);
  }

  void groupValue(int value) {
    state = CategoryChipGroupValue(value);
  }
}

final categoryChipNotifierProvider =
    NotifierProvider<CategoryChipNotifier, CategoryChipGroupValue>(
  CategoryChipNotifier.new,
);

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
        final brandId = ref.watch(selectedBrandIdProvider);
        return CategoryChip(
          categoryText: categories[index].categoryName,
          categoryValue: index,
          onPressed: () {
            final categoryId = ref
                .read(selectedCategoryIdProvider.notifier)
                .state = categories[index].id;
            // final brandId = ref.read(selectedBrandIdProvider);
            debugPrint('NNNN$brandId');
            ref.read(categoryChipNotifierProvider.notifier).groupValue(index);
            ref.read(listProductsNotifierProvider).products.entity.clear();
            ref.read(listProductsNotifierProvider.notifier).getProductsPage(
                  productsFunction: ProductsFunction.getProducts,
                  categoryId: categoryId,
                  brandId: brandId,
                );
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