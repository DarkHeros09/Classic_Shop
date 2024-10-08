import 'package:classic_shop/src/features/brands/presentation/widgets/brand_chip_row.dart';
import 'package:classic_shop/src/features/brands/presentation/widgets/loading_brand_chip.dart';
import 'package:classic_shop/src/features/brands/shared/provider.dart';
import 'package:classic_shop/src/features/categories/presentation/widgets/category_card.dart';
import 'package:classic_shop/src/features/products/core/shared/providers.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BrandChip extends HookConsumerWidget {
  const BrandChip({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    final index = ref.watch(brandChipIndexProvider);
    final brand = ref.watch(
      brandNotifierProvider.select(
        (state) => state.map(
          initial: (_) => _.brands.entity[index],
          loadInProgress: (_) => _.brands.entity[index],
          loadSuccess: (_) => _.brands.entity[index],
          loadFailure: (_) => _.brands.entity[index],
        ),
      ),
    );
    final groupValue = ref.watch(
      brandChipNotifierProvider.select((value) => value.groupValue),
    );
    return InkWell(
      onTap: () {
        final categoryId = ref.read(selectedCategoryIdProvider);
        final brandId =
            ref.read(selectedBrandIdProvider.notifier).state = brand.id;
        ref.read(brandChipNotifierProvider.notifier).groupValue(index);
        ref.read(listProductsNotifierProvider).products.entity.clear();
        ref.read(listProductsNotifierProvider.notifier).getProductsPage(
              productsFunction: ProductsFunction.getProducts,
              categoryId: categoryId,
              brandId: brandId,
            );
      },
      child: Container(
        height: 89,
        width: 89,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isDarkMode ? const Color(0xFF3D2622) : const Color(0xFFE6D5D2),
          shape: BoxShape.circle,
          border: Border.all(
            width: groupValue == index ? 3 : 1,
            color: groupValue == index
                // ? isDarkMode
                ? const Color(0xff9D331F)
                : const Color(0xffE6D5D2),
            // : isDarkMode
            //     ? const Color(0xff9D331F)
            //     : const Color(0xffE6D5D2),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: ExtendedImage.network(
            brand.brandImage,
            fit: BoxFit.contain,
            shape: BoxShape.circle,
            // height: 89,
            // width: 89,
            enableLoadState: false,
            cacheMaxAge: const Duration(days: 30),
            loadStateChanged: (state) {
              switch (state.extendedImageLoadState) {
                case LoadState.loading:
                  const LoadingBrandChip();

                case LoadState.failed:
                  const ColoredBox(color: Colors.grey);

                case LoadState.completed:
              }
              return null;
            },
          ),
        ),
      ),
    );
  }
}
