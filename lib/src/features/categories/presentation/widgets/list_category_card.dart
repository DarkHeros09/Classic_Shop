import 'package:classic_shop/src/features/categories/presentation/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ListCategoryCard extends HookConsumerWidget {
  const ListCategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const CategoryCard();
  }
}
