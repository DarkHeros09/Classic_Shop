import 'package:classic_shop/src/features/size/application/size_notifier.dart';
import 'package:classic_shop/src/features/size/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:super_sliver_list/super_sliver_list.dart';

class SizePage extends ConsumerWidget {
  const SizePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final state = ref.watch(sizeNotifierProvider);
    final itemCount = state.maybeMap(
      loadSuccess: (value) => value.sizes.entity.length + 2,
      orElse: () => 0,
    );
    return SuperListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemCount,
      separatorBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Divider(
          height: 1,
          thickness: .3,
        ),
      ),
      itemBuilder: (context, index) => state.maybeMap(
        loadSuccess: (value) {
          if (index == 0) {
            return Center(
              child: Text(
                'الأحجام',
                style: appTheme.textTheme.bodyLarge
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
            );
          }
          if (index == value.sizes.entity.length + 1) {
            return const SizedBox(height: 40);
          }
          return InkWell(
            onTap: () {
              ref
                  .read(selectedSizeProvider.notifier)
                  .setSize(state.sizes.entity[index - 1]);
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Text(
                state.sizes.entity[index - 1].sizeValue,
                style: appTheme.textTheme.bodyLarge,
              ),
            ),
          );
        },
        orElse: SizedBox.shrink,
      ),
    );
  }
}
