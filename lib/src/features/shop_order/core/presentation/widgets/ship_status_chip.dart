import 'package:classic_shop/src/features/shop_order/core/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ShipStatusChip extends HookConsumerWidget {
  const ShipStatusChip({
    required this.chipText,
    required this.chipValue,
    // required this.groupValue,
    required this.onPressed,
    super.key,
  });

  final String chipText;
  final int chipValue;
  // final int groupValue;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    final groupValue =
        ref.watch(chipNotifierProvider.select((value) => value.groupValue));
    return Expanded(
      child: SizedBox(
        height: 40,
        child: TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            backgroundColor: groupValue == chipValue
                ? isDarkMode
                    ? const Color(0xFFDDDDDD)
                    : const Color(0xFF121212)
                : isDarkMode
                    ? Colors.black
                    : const Color(0xFFFAFAFA),
          ),
          onPressed: onPressed,
          //  () {
          //   groupValue.value = chipValue;
          // },
          child: Text(
            chipText,
            softWrap: false,
            style: appTheme.textTheme.bodySmall?.copyWith(
              color: groupValue == chipValue
                  ? isDarkMode
                      ? Colors.black
                      : Colors.white
                  : isDarkMode
                      ? Colors.white
                      : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
