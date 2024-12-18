import 'package:classic_shop/src/features/brands/application/brand_notifier.dart';
import 'package:classic_shop/src/features/brands/presentation/widgets/loading_brand_chip.dart';
import 'package:classic_shop/src/features/brands/shared/provider.dart';
import 'package:classic_shop/src/features/categories/shared/provider.dart';
import 'package:classic_shop/src/features/products/core/shared/providers.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';
import 'package:classic_shop/src/features/products/listed_products/application/list_products_notifier.dart';
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
        ref
            .read(selectedBrandIdProvider.notifier)
            .setId(groupValue != index ? brand.id : null);
        // final brandId = ref.read(selectedBrandIdProvider);
        ref
            .read(brandChipNotifierProvider.notifier)
            .groupValue(groupValue != index ? index : null);
        ref.read(listProductsNotifierProvider).products.entity.clear();
        final selectedSortOption = ref.read(
          sortOptionsNotifierProvider.select(
            (value) => value.groupValue,
          ),
        );
        switch (selectedSortOption) {
          case 'recommended':
            ref.read(listProductsNotifierProvider.notifier).getProductsPage(
                  productsFunction: ProductsFunction.getProducts,
                  categoryId: categoryId,
                  brandId: groupValue != index ? brand.id : null,
                );
          case 'new':
            ref.read(listProductsNotifierProvider.notifier).getProductsPage(
                  productsFunction: ProductsFunction.getProducts,
                  categoryId: categoryId,
                  brandId: groupValue != index ? brand.id : null,
                  orderByNew: true,
                );
          case 'old':
            ref.read(listProductsNotifierProvider.notifier).getProductsPage(
                  productsFunction: ProductsFunction.getProducts,
                  categoryId: categoryId,
                  brandId: groupValue != index ? brand.id : null,
                  orderByOld: true,
                );
          case 'priceDesc':
            ref.read(listProductsNotifierProvider.notifier).getProductsPage(
                  productsFunction: ProductsFunction.getProducts,
                  categoryId: categoryId,
                  brandId: groupValue != index ? brand.id : null,
                  orderByHighPrice: true,
                );
          case 'priceAsc':
            ref.read(listProductsNotifierProvider.notifier).getProductsPage(
                  productsFunction: ProductsFunction.getProducts,
                  categoryId: categoryId,
                  brandId: groupValue != index ? brand.id : null,
                  orderByLowPrice: true,
                );
        }
      },
      child: CircleAvatar(
        radius: 40,
        backgroundColor: groupValue == index
            // ? isDarkMode
            ? const Color(0xff9D331F)
            : const Color(0xffE6D5D2),
        child: CircleAvatar(
          radius: groupValue == index ? 30 : 31,
          //backgroundColor: isDarkMode ? const Color(0xFF3D2622) : const Color(0xFFE6D5D2),
          backgroundColor: isDarkMode ? Colors.white : const Color(0xFFE6D5D2),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(80)),
            child: ExtendedImage.network(
              brand.brandImage,
              fit: BoxFit.contain,
              // shape: BoxShape.circle,
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
      ),
    );
  }
}
