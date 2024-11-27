import 'package:classic_shop/src/features/categories/application/category_notifier.dart';
import 'package:classic_shop/src/features/categories/presentation/widgets/list_category_card.dart';
import 'package:classic_shop/src/features/categories/presentation/widgets/loading_category_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:super_sliver_list/super_sliver_list.dart';

final categoryCardIndexProvider = Provider<int>((_) => 0);

class CategoriesListView extends ConsumerWidget {
  const CategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(categoryNotifierProvider);
    final itemCount = ref.watch(
      categoryNotifierProvider.select(
        (value) => value.map(
          initial: (_) => 0,
          loadInProgress: (_) => _.categories.entity.length + 5,
          loadSuccess: (_) => _.categories.entity.length,
          loadFailure: (_) => _.categories.entity.length + 1,
        ),
      ),
    );
    return SuperSliverList.separated(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return ProviderScope(
          key: UniqueKey(),
          overrides: [categoryCardIndexProvider.overrideWithValue(index)],
          child: state.map(
            initial: (_) => const SizedBox.shrink(),
            loadInProgress: (_) {
              // if (index < _.categories.entity.length) {
              //   return const ListCategoryCard();
              // } else {
              return const LoadingCategoryCard();
              // }
            },
            loadSuccess: (_) => const ListCategoryCard(),
            loadFailure: (_) {
              if (index < _.categories.entity.length) {
                return const ListCategoryCard();
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 16,
        );
      },
    );
  }
}
