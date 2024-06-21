import 'package:classic_shop/src/features/brands/presentation/widgets/brand_chip_row.dart';
import 'package:classic_shop/src/features/categories/presentation/widgets/category_card.dart';
import 'package:classic_shop/src/features/products/core/shared/providers.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';
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

class SortOptionsGroupValue {
  const SortOptionsGroupValue(
    this.groupValue,
  );
  final String groupValue;
}

class SortOptionsNotifier extends Notifier<SortOptionsGroupValue> {
  @override
  SortOptionsGroupValue build() {
    return const SortOptionsGroupValue('new');
  }

  void groupValue(String value) {
    state = SortOptionsGroupValue(value);
  }
}

final sortOptionsNotifierProvider =
    NotifierProvider<SortOptionsNotifier, SortOptionsGroupValue>(
  SortOptionsNotifier.new,
);

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
        const _SortOptionTab(radioText: 'الموصى به', radioValue: 'recommende'),
        const Divider(
          height: 1,
          thickness: .3,
        ),
        const _SortOptionTab(radioText: 'جديد', radioValue: 'new'),
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
        const Divider(
          height: 1,
          thickness: .3,
        ),
        const _SortOptionTab(radioText: 'تخفيضات', radioValue: 'discounts'),
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
    final categoryId =
        ref.watch(selectedCategoryIdProvider.select((value) => value));
    final brandId = ref.watch(selectedBrandIdProvider.select((value) => value));
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        ref.read(sortOptionsNotifierProvider.notifier).groupValue(radioValue);
        switch (selectedSortOption) {
          case 'priceAsc':
            ref.read(listProductsNotifierProvider).products.entity.clear();

            ref.read(listProductsNotifierProvider.notifier).getProductsPage(
                  productsFunction: ProductsFunction.getProducts,
                  brandId: brandId,
                  categoryId: categoryId,
                  orderByLowPrice: true,
                );
          case 'priceDesc':
            ref.read(listProductsNotifierProvider).products.entity.clear();
            ref.read(listProductsNotifierProvider.notifier).getProductsPage(
                  productsFunction: ProductsFunction.getProducts,
                  brandId: brandId,
                  categoryId: categoryId,
                  orderByHighPrice: true,
                );
          default:
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
                onChanged: (value) {
                  switch (value) {
                    case 'priceAsc':
                      ref
                          .read(listProductsNotifierProvider)
                          .products
                          .entity
                          .clear();

                      ref
                          .read(listProductsNotifierProvider.notifier)
                          .getProductsPage(
                            productsFunction: ProductsFunction.getProducts,
                            brandId: brandId,
                            categoryId: categoryId,
                            orderByLowPrice: true,
                          );
                    case 'priceDesc':
                      ref
                          .read(listProductsNotifierProvider)
                          .products
                          .entity
                          .clear();
                      ref
                          .read(listProductsNotifierProvider.notifier)
                          .getProductsPage(
                            productsFunction: ProductsFunction.getProducts,
                            brandId: brandId,
                            categoryId: categoryId,
                            orderByHighPrice: true,
                          );
                    default:
                  }
                  ref
                      .read(sortOptionsNotifierProvider.notifier)
                      .groupValue(value ?? selectedSortOption);
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
