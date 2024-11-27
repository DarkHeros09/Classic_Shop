import 'package:classic_shop/src/features/shop_order/core/presentation/widgets/ship_status_chip.dart';
import 'package:classic_shop/src/features/shop_order/core/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ShipStatusChipRow extends HookConsumerWidget {
  const ShipStatusChipRow({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final groupValue = useState(1);
    // final groupValue =
    //     ref.watch(chipNotifierProvider.select((value) => value.groupValue));
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShipStatusChip(
              chipText: 'الكل',
              chipValue: 1,
              // groupValue: groupValue,
              onPressed: () {
                // groupValue.value = 1;
                ref.read(chipNotifierProvider.notifier).groupValue(1);
              },
            ),
            const SizedBox(width: 4),
            ShipStatusChip(
              chipText: 'تحت الإجراء',
              chipValue: 2,
              // groupValue: groupValue,
              onPressed: () {
                // groupValue.value = 2;
                ref.read(chipNotifierProvider.notifier).groupValue(2);
              },
            ),
            const SizedBox(width: 4),
            ShipStatusChip(
              chipText: 'تم التسليم',
              chipValue: 3,
              // groupValue: groupValue,
              onPressed: () {
                // groupValue.value = 3;
                ref.read(chipNotifierProvider.notifier).groupValue(3);
              },
            ),
            const SizedBox(width: 4),
            ShipStatusChip(
              chipText: 'ملغي',
              chipValue: 4,
              // groupValue: groupValue,
              onPressed: () {
                // groupValue.value = 4;
                ref.read(chipNotifierProvider.notifier).groupValue(4);
              },
            ),
          ],
        ),
      ),
    );
  }
}
