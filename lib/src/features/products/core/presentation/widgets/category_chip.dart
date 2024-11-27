import 'package:classic_shop/src/features/categories/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CategoryChip extends HookConsumerWidget {
  const CategoryChip({
    required this.categoryText,
    required this.categoryValue,
    required this.onPressed,
    super.key,
  });

  final String categoryText;
  final int categoryValue;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    final groupValue = ref.watch(
      categoryChipNotifierProvider.select((value) => value.groupValue),
    );
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor: isDarkMode ? const Color(0xFF121212) : Colors.white,
        side: BorderSide(
          color: groupValue == categoryValue
              ? const Color(0xff9D331F)
              : const Color(0xffDABFBA),
        ),
        // splashFactory: InteractiveInkFeatureFactory.,
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 5,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        categoryText,
        style: appTheme.textTheme.bodyLarge,
      ),
    );
  }
}
