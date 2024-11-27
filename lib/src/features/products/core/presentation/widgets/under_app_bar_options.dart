import 'package:classic_shop/src/features/brands/shared/provider.dart';
import 'package:classic_shop/src/features/categories/shared/provider.dart';
import 'package:classic_shop/src/features/products/core/shared/providers.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';
import 'package:classic_shop/src/features/products/listed_products/application/list_products_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UnderAppBarOptions extends HookConsumerWidget {
  const UnderAppBarOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: isDarkMode ? const Color(0xFF121212) : Colors.white,
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 4,
            color: Color(0x24000000),
          ),
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _SortOption(),
          SizedBox(
            height: 30,
            child: VerticalDivider(
              color: Colors.grey,
              thickness: 1,
              width: 0,
            ),
          ),
          _FilterOption(),
        ],
      ),
    );
  }
}

class _SortOption extends StatelessWidget {
  const _SortOption();

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return Expanded(
      child: InkWell(
        onTap: () => showModalBottomSheet<void>(
          context: context,
          showDragHandle: true,
          isScrollControlled: true,
          builder: (context) {
            return const _SortOptionsBottomSheet();
          },
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.arrow_drop_down),
            const SizedBox(
              width: 4,
            ),
            Text(
              'ترتيب',
              style: appTheme.textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}

class _SortOptionsBottomSheet extends StatelessWidget {
  const _SortOptionsBottomSheet();

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      // mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('ترتيب'),
            IconButton(
              onPressed: () => Navigator.pop(
                context,
              ),
              icon: const Icon(
                Icons.close,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        const Divider(
          height: 1,
          thickness: .3,
        ),
        const _SortOptionTab(radioText: 'الموصى به', radioValue: 'recommended'),
        const Divider(
          height: 1,
          thickness: .3,
        ),
        const _SortOptionTab(radioText: 'جديد', radioValue: 'new'),
        const Divider(
          height: 1,
          thickness: .3,
        ),
        const _SortOptionTab(radioText: 'قديم', radioValue: 'old'),
        const Divider(
          height: 1,
          thickness: .3,
        ),
        const _SortOptionTab(
          radioText: 'السعر (من الأعلى إلى الأقل)',
          radioValue: 'priceDesc',
        ),
        const Divider(
          height: 1,
          thickness: .3,
        ),
        const _SortOptionTab(
          radioText: 'السعر (من الأقل إلى الأعلى)',
          radioValue: 'priceAsc',
        ),
        // const Divider(
        //   height: 1,
        //   thickness: .3,
        // ),
        // const _SortOptionTab(radioText: 'تخفيضات', radioValue: 'discounts'),
      ],
    );
  }
}

class _SortOptionTab extends HookConsumerWidget {
  const _SortOptionTab({
    required this.radioText,
    required this.radioValue,
  });
  final String radioText;
  final String radioValue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedSortOption = ref.watch(
      sortOptionsNotifierProvider.select(
        (value) => value.groupValue,
      ),
    );
    // final categoryId =
    //     ref.watch(selectedCategoryIdProvider.select((value) => value));
    // final brandId = ref.watch(selectedBrandIdProvider.select((value) => value));
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () async {
        final categoryId = ref.read(selectedCategoryIdProvider);
        final brandId = ref.read(selectedBrandIdProvider);
        ref.read(sortOptionsNotifierProvider.notifier).groupValue(radioValue);
        ref.read(listProductsNotifierProvider).products.entity.clear();
        switch (radioValue) {
          case 'recommended':
            await ref
                .read(listProductsNotifierProvider.notifier)
                .getProductsPage(
                  productsFunction: ProductsFunction.getProducts,
                  categoryId: categoryId,
                  brandId: brandId,
                );
          case 'new':
            await ref
                .read(listProductsNotifierProvider.notifier)
                .getProductsPage(
                  productsFunction: ProductsFunction.getProducts,
                  categoryId: categoryId,
                  brandId: brandId,
                  orderByNew: true,
                );
          case 'old':
            await ref
                .read(listProductsNotifierProvider.notifier)
                .getProductsPage(
                  productsFunction: ProductsFunction.getProducts,
                  categoryId: categoryId,
                  brandId: brandId,
                  orderByOld: true,
                );
          case 'priceAsc':
            await ref
                .read(listProductsNotifierProvider.notifier)
                .getProductsPage(
                  productsFunction: ProductsFunction.getProducts,
                  brandId: brandId,
                  categoryId: categoryId,
                  orderByLowPrice: true,
                );
          case 'priceDesc':
            await ref
                .read(listProductsNotifierProvider.notifier)
                .getProductsPage(
                  productsFunction: ProductsFunction.getProducts,
                  brandId: brandId,
                  categoryId: categoryId,
                  orderByHighPrice: true,
                );
        }
        if (context.mounted) {
          Navigator.pop(context);
        }
      },
      child: Column(
        children: [
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.circle,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(radioText),
                ],
              ),
              Radio(
                value: radioValue,
                groupValue: selectedSortOption,
                onChanged: (value) async {
                  final categoryId = ref.read(selectedCategoryIdProvider);
                  final brandId = ref.read(selectedBrandIdProvider);
                  ref
                      .read(sortOptionsNotifierProvider.notifier)
                      .groupValue(value!);
                  ref
                      .read(listProductsNotifierProvider)
                      .products
                      .entity
                      .clear();
                  switch (value) {
                    case 'recommended':
                      await ref
                          .read(listProductsNotifierProvider.notifier)
                          .getProductsPage(
                            productsFunction: ProductsFunction.getProducts,
                            categoryId: categoryId,
                            brandId: brandId,
                          );
                    case 'new':
                      await ref
                          .read(listProductsNotifierProvider.notifier)
                          .getProductsPage(
                            productsFunction: ProductsFunction.getProducts,
                            categoryId: categoryId,
                            brandId: brandId,
                            orderByNew: true,
                          );
                    case 'old':
                      await ref
                          .read(listProductsNotifierProvider.notifier)
                          .getProductsPage(
                            productsFunction: ProductsFunction.getProducts,
                            categoryId: categoryId,
                            brandId: brandId,
                            orderByOld: true,
                          );
                    case 'priceAsc':
                      await ref
                          .read(listProductsNotifierProvider.notifier)
                          .getProductsPage(
                            productsFunction: ProductsFunction.getProducts,
                            brandId: brandId,
                            categoryId: categoryId,
                            orderByLowPrice: true,
                          );
                    case 'priceDesc':
                      await ref
                          .read(listProductsNotifierProvider.notifier)
                          .getProductsPage(
                            productsFunction: ProductsFunction.getProducts,
                            brandId: brandId,
                            categoryId: categoryId,
                            orderByHighPrice: true,
                          );
                  }
                },
              ),
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

class _FilterOption extends StatelessWidget {
  const _FilterOption();

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return Expanded(
      child: InkWell(
        onTap: () => showModalBottomSheet<void>(
          context: context,
          showDragHandle: true,
          isScrollControlled: true,
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: ListView(
                shrinkWrap: true,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('تصفية'),
                      IconButton(
                        onPressed: () => Navigator.pop(
                          context,
                        ),
                        icon: const Icon(
                          Icons.close,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Divider(
                    height: 1,
                    thickness: .3,
                  ),
                  InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () => Navigator.pop(context),
                    child: const Column(
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text('الفئة'),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 1,
                    thickness: .3,
                  ),
                  const SizedBox(height: 16),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('الماركات'),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Divider(
                    height: 1,
                    thickness: .3,
                  ),
                  const SizedBox(height: 16),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('الألوان'),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Divider(
                    height: 1,
                    thickness: .3,
                  ),
                  const SizedBox(height: 16),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('الأحجام'),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Divider(
                    height: 1,
                    thickness: .3,
                  ),
                  const SizedBox(height: 16),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('الأسعار'),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            );
          },
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.filter),
            const SizedBox(
              width: 4,
            ),
            Text(
              'تصفية',
              style: appTheme.textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
