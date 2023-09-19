import 'package:classic_shop/src/features/shop_order/core/presentation/widgets/ship_status_chip_row.dart';
import 'package:classic_shop/src/features/shop_order/core/presentation/widgets/shop_order_list.dart';
import 'package:classic_shop/src/features/shop_order/core/shared/providers.dart';
import 'package:classic_shop/src/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class ShopOrderCard extends StatelessWidget {
  const ShopOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: 184,
      width: double.infinity,
      decoration: BoxDecoration(
        color: isDarkMode ? const Color(0xFF0D0D0D) : Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x24000000),
            blurRadius: 3,
            offset: Offset(1, 0),
          )
        ],
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: const Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
        ),
        child: Column(
          children: [
            OrderNumberAndDate(),
            SizedBox(
              height: 16,
            ),
            OrderTrackNumber(),
            SizedBox(
              height: 16,
            ),
            OrderTotalAndQTY(),
            SizedBox(
              height: 8,
            ),
            OrderDetailsAndStatus()
          ],
        ),
      ),
    );
  }
}

class OrderDetailsAndStatus extends ConsumerWidget {
  const OrderDetailsAndStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    final chipGroupValue =
        ref.watch(chipNotifierProvider.select((value) => value.groupValue));
    final index = ref.watch(shopOrderCardIndexProvider);
    final shopOrders = ref.watch(
      shopOrderNotifierProvider.select(
        (state) => state.map(
          initial: (_) => switch (chipGroupValue) {
            1 => _.shopOrders.entity[index],
            2 => _.shopOrders.entity
                .where((element) => element.status == 'تحت الإجراء')
                .toList()[index],
            3 => _.shopOrders.entity
                .where((element) => element.status == 'تم التسليم')
                .toList()[index],
            4 => _.shopOrders.entity
                .where((element) => element.status == 'ملغي')
                .toList()[index],
            _ => _.shopOrders.entity[index],
          },
          loadInProgress: (_) => switch (chipGroupValue) {
            1 => _.shopOrders.entity[index],
            2 => _.shopOrders.entity
                .where((element) => element.status == 'تحت الإجراء')
                .toList()[index],
            3 => _.shopOrders.entity
                .where((element) => element.status == 'تم التسليم')
                .toList()[index],
            4 => _.shopOrders.entity
                .where((element) => element.status == 'ملغي')
                .toList()[index],
            _ => _.shopOrders.entity[index],
          },
          loadSuccess: (_) => switch (chipGroupValue) {
            1 => _.shopOrders.entity[index],
            2 => _.shopOrders.entity
                .where((element) => element.status == 'تحت الإجراء')
                .toList()[index],
            3 => _.shopOrders.entity
                .where((element) => element.status == 'تم التسليم')
                .toList()[index],
            4 => _.shopOrders.entity
                .where((element) => element.status == 'ملغي')
                .toList()[index],
            _ => _.shopOrders.entity[index],
          },
          loadFailure: (_) => switch (chipGroupValue) {
            1 => _.shopOrders.entity[index],
            2 => _.shopOrders.entity
                .where((element) => element.status == 'تحت الإجراء')
                .toList()[index],
            3 => _.shopOrders.entity
                .where((element) => element.status == 'تم التسليم')
                .toList()[index],
            4 => _.shopOrders.entity
                .where((element) => element.status == 'ملغي')
                .toList()[index],
            _ => _.shopOrders.entity[index],
          },
        ),
      ),
    );
    return Row(
      children: [
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            // side: const BorderSide(color: Color(0xFF9D331F)),
            side: const BorderSide(color: Color(0xFFB23B23)),
            backgroundColor:
                isDarkMode ? const Color(0xFF131313) : const Color(0xFFF9F9F9),
          ),
          onPressed: () {
            context.goNamed(
              AppRoute.orderDetails.name,
              pathParameters: {'id': shopOrders.id.toString()},
              extra: shopOrders,
            );
            // ref
            //     .read(shopOrderItemsNotifierProvider.notifier)
            //     .deleteAllShopOrderItemss();
            // ref.read(responseHeaderCacheProvider).deleteAllHeaders();
          },
          child: const Text('التفاصيل'),
        ),
        const SizedBox(
          width: 40,
        ),
        Text(
          'الحالة:',
          style: appTheme.textTheme.bodySmall?.copyWith(
            color: const Color(0xff858080),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          shopOrders.status,
          style: appTheme.textTheme.bodySmall?.copyWith(
            color: switch (shopOrders.status) {
              'تم التسليم' => const Color(0xFF2AA952),
              'تحت الإجراء' => const Color(0xFFFFA004),
              'ملغي' => const Color(0xFFDB3022),
              _ => Colors.black,
            },
          ),
        ),
      ],
    );
  }
}

class OrderTotalAndQTY extends ConsumerWidget {
  const OrderTotalAndQTY({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final index = ref.watch(shopOrderCardIndexProvider);
    final chipGroupValue =
        ref.watch(chipNotifierProvider.select((value) => value.groupValue));
    final shopOrders = ref.watch(
      shopOrderNotifierProvider.select(
        (state) => state.map(
          initial: (_) => switch (chipGroupValue) {
            1 => _.shopOrders.entity[index],
            2 => _.shopOrders.entity
                .where((element) => element.status == 'تحت الإجراء')
                .toList()[index],
            3 => _.shopOrders.entity
                .where((element) => element.status == 'تم التسليم')
                .toList()[index],
            4 => _.shopOrders.entity
                .where((element) => element.status == 'ملغي')
                .toList()[index],
            _ => _.shopOrders.entity[index],
          },
          loadInProgress: (_) => switch (chipGroupValue) {
            1 => _.shopOrders.entity[index],
            2 => _.shopOrders.entity
                .where((element) => element.status == 'تحت الإجراء')
                .toList()[index],
            3 => _.shopOrders.entity
                .where((element) => element.status == 'تم التسليم')
                .toList()[index],
            4 => _.shopOrders.entity
                .where((element) => element.status == 'ملغي')
                .toList()[index],
            _ => _.shopOrders.entity[index],
          },
          loadSuccess: (_) => switch (chipGroupValue) {
            1 => _.shopOrders.entity[index],
            2 => _.shopOrders.entity
                .where((element) => element.status == 'تحت الإجراء')
                .toList()[index],
            3 => _.shopOrders.entity
                .where((element) => element.status == 'تم التسليم')
                .toList()[index],
            4 => _.shopOrders.entity
                .where((element) => element.status == 'ملغي')
                .toList()[index],
            _ => _.shopOrders.entity[index],
          },
          loadFailure: (_) => switch (chipGroupValue) {
            1 => _.shopOrders.entity[index],
            2 => _.shopOrders.entity
                .where((element) => element.status == 'تحت الإجراء')
                .toList()[index],
            3 => _.shopOrders.entity
                .where((element) => element.status == 'تم التسليم')
                .toList()[index],
            4 => _.shopOrders.entity
                .where((element) => element.status == 'ملغي')
                .toList()[index],
            _ => _.shopOrders.entity[index],
          },
        ),
      ),
    );
    final total = num.tryParse(shopOrders.orderTotal)?.toStringAsFixed(2);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              'الكمية:',
              style: appTheme.textTheme.bodySmall?.copyWith(
                color: const Color(0xff858080),
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              shopOrders.itemCount.toString(),
              style: appTheme.textTheme.bodySmall,
            )
          ],
        ),
        Row(
          children: [
            Text(
              'الإجمالي الكلي:',
              style: appTheme.textTheme.bodySmall?.copyWith(
                color: const Color(0xff858080),
              ),
            ),
            const SizedBox(
              width: 14,
            ),
            Row(
              children: [
                Text(
                  '$total د.ل',
                  style: appTheme.textTheme.bodySmall
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
                const Icon(
                  Icons.price_check,
                )
              ],
            )
          ],
        )
      ],
    );
  }
}

class OrderTrackNumber extends ConsumerWidget {
  const OrderTrackNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final index = ref.watch(shopOrderCardIndexProvider);
    final chipGroupValue =
        ref.watch(chipNotifierProvider.select((value) => value.groupValue));
    final shopOrders = ref.watch(
      shopOrderNotifierProvider.select(
        (state) => state.map(
          initial: (_) => switch (chipGroupValue) {
            1 => _.shopOrders.entity[index],
            2 => _.shopOrders.entity
                .where((element) => element.status == 'تحت الإجراء')
                .toList()[index],
            3 => _.shopOrders.entity
                .where((element) => element.status == 'تم التسليم')
                .toList()[index],
            4 => _.shopOrders.entity
                .where((element) => element.status == 'ملغي')
                .toList()[index],
            _ => _.shopOrders.entity[index],
          },
          loadInProgress: (_) => switch (chipGroupValue) {
            1 => _.shopOrders.entity[index],
            2 => _.shopOrders.entity
                .where((element) => element.status == 'تحت الإجراء')
                .toList()[index],
            3 => _.shopOrders.entity
                .where((element) => element.status == 'تم التسليم')
                .toList()[index],
            4 => _.shopOrders.entity
                .where((element) => element.status == 'ملغي')
                .toList()[index],
            _ => _.shopOrders.entity[index],
          },
          loadSuccess: (_) => switch (chipGroupValue) {
            1 => _.shopOrders.entity[index],
            2 => _.shopOrders.entity
                .where((element) => element.status == 'تحت الإجراء')
                .toList()[index],
            3 => _.shopOrders.entity
                .where((element) => element.status == 'تم التسليم')
                .toList()[index],
            4 => _.shopOrders.entity
                .where((element) => element.status == 'ملغي')
                .toList()[index],
            _ => _.shopOrders.entity[index],
          },
          loadFailure: (_) => switch (chipGroupValue) {
            1 => _.shopOrders.entity[index],
            2 => _.shopOrders.entity
                .where((element) => element.status == 'تحت الإجراء')
                .toList()[index],
            3 => _.shopOrders.entity
                .where((element) => element.status == 'تم التسليم')
                .toList()[index],
            4 => _.shopOrders.entity
                .where((element) => element.status == 'ملغي')
                .toList()[index],
            _ => _.shopOrders.entity[index],
          },
        ),
      ),
    );
    return Row(
      children: [
        Text(
          'رقم التتبع:',
          style: appTheme.textTheme.bodySmall?.copyWith(
            color: const Color(0xff858080),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          shopOrders.trackNumber,
          style: appTheme.textTheme.bodySmall
              ?.copyWith(fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}

class OrderNumberAndDate extends ConsumerWidget {
  const OrderNumberAndDate({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final index = ref.watch(shopOrderCardIndexProvider);
    final chipGroupValue =
        ref.watch(chipNotifierProvider.select((value) => value.groupValue));
    final shopOrders = ref.watch(
      shopOrderNotifierProvider.select(
        (state) => state.map(
          initial: (_) => switch (chipGroupValue) {
            1 => _.shopOrders.entity[index],
            2 => _.shopOrders.entity
                .where((element) => element.status == 'تحت الإجراء')
                .toList()[index],
            3 => _.shopOrders.entity
                .where((element) => element.status == 'تم التسليم')
                .toList()[index],
            4 => _.shopOrders.entity
                .where((element) => element.status == 'ملغي')
                .toList()[index],
            _ => _.shopOrders.entity[index],
          },
          loadInProgress: (_) => switch (chipGroupValue) {
            1 => _.shopOrders.entity[index],
            2 => _.shopOrders.entity
                .where((element) => element.status == 'تحت الإجراء')
                .toList()[index],
            3 => _.shopOrders.entity
                .where((element) => element.status == 'تم التسليم')
                .toList()[index],
            4 => _.shopOrders.entity
                .where((element) => element.status == 'ملغي')
                .toList()[index],
            _ => _.shopOrders.entity[index],
          },
          loadSuccess: (_) => switch (chipGroupValue) {
            1 => _.shopOrders.entity[index],
            2 => _.shopOrders.entity
                .where((element) => element.status == 'تحت الإجراء')
                .toList()[index],
            3 => _.shopOrders.entity
                .where((element) => element.status == 'تم التسليم')
                .toList()[index],
            4 => _.shopOrders.entity
                .where((element) => element.status == 'ملغي')
                .toList()[index],
            _ => _.shopOrders.entity[index],
          },
          loadFailure: (_) => switch (chipGroupValue) {
            1 => _.shopOrders.entity[index],
            2 => _.shopOrders.entity
                .where((element) => element.status == 'تحت الإجراء')
                .toList()[index],
            3 => _.shopOrders.entity
                .where((element) => element.status == 'تم التسليم')
                .toList()[index],
            4 => _.shopOrders.entity
                .where((element) => element.status == 'ملغي')
                .toList()[index],
            _ => _.shopOrders.entity[index],
          },
        ),
      ),
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'رقم الطلب: ${shopOrders.orderNumber}',
          style: appTheme.textTheme.bodyLarge
              ?.copyWith(fontWeight: FontWeight.w700),
        ),
        Text(
          DateFormat('yyyy-MM-dd').format(shopOrders.createdAt.toUtc()),
          style: appTheme.textTheme.bodySmall?.copyWith(
            color: const Color(0xff858080),
          ),
        )
      ],
    );
  }
}
