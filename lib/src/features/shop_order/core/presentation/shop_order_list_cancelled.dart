import 'package:classic_shop/src/features/shop_order/core/application/shop_order_notifier.dart';
import 'package:classic_shop/src/features/shop_order/core/presentation/widgets/loading_shop_order_card.dart';
import 'package:classic_shop/src/helpers/super_sliver_list_separated.dart';
import 'package:classic_shop/src/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

final shopOrderCardCancelledIndexProvider =
    Provider<int>((_) => throw UnimplementedError());

class ShopOrderListCancelled extends StatefulHookConsumerWidget {
  const ShopOrderListCancelled({super.key});
  @override
  ConsumerState<ShopOrderListCancelled> createState() =>
      ShopOrderListCancelledState();
}

class ShopOrderListCancelledState
    extends ConsumerState<ShopOrderListCancelled> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(shopOrdersCancelledNotifierProvider);
    final itemCount = ref.watch(
      shopOrdersCancelledNotifierProvider.select(
        (state) => state.map(
          initial: (_) => _.shopOrders.entity.length,
          loadInProgress: (_) => _.shopOrders.entity.length + _.itemsPerPage,
          loadSuccess: (_) => _.shopOrders.entity.length,
          loadFailure: (_) => _.shopOrders.entity.length,
        ),
      ),
    );
    debugPrint('_itemCount $itemCount');
    return SuperSliverListSeparated(
      itemCount: itemCount,
      itemBuilder: (context, index) => ProviderScope(
        key: UniqueKey(),
        overrides: [
          shopOrderCardCancelledIndexProvider.overrideWithValue(index),
        ],
        child: state.map(
          initial: (_) => const SizedBox.shrink(),
          loadInProgress: (_) {
            if (index < _.shopOrders.entity.length) {
              return const _ShopOrderCard();
            } else {
              return const LoadingShopOrderCard();
            }
          },
          loadSuccess: (_) => const _ShopOrderCard(),
          loadFailure: (_) {
            if (index < _.shopOrders.entity.length) {
              return const _ShopOrderCard();
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      ),
      separator: (context, index) => const SizedBox(
        height: 16,
      ),
    );
  }
}

class _ShopOrderCard extends StatelessWidget {
  const _ShopOrderCard();

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
          ),
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
            OrderDetailsAndStatus(),
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
    final index = ref.watch(shopOrderCardCancelledIndexProvider);
    final shopOrders = ref.watch(
      shopOrdersCancelledNotifierProvider.select(
        (state) => state.map(
          initial: (_) => _.shopOrders.entity[index],
          loadInProgress: (_) => _.shopOrders.entity[index],
          loadSuccess: (_) => _.shopOrders.entity[index],
          loadFailure: (_) => _.shopOrders.entity[index],
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
    final index = ref.watch(shopOrderCardCancelledIndexProvider);
    final shopOrders = ref.watch(
      shopOrdersCancelledNotifierProvider.select(
        (state) => state.map(
          initial: (_) => _.shopOrders.entity[index],
          loadInProgress: (_) => _.shopOrders.entity[index],
          loadSuccess: (_) => _.shopOrders.entity[index],
          loadFailure: (_) => _.shopOrders.entity[index],
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
            ),
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
                ),
              ],
            ),
          ],
        ),
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
    final index = ref.watch(shopOrderCardCancelledIndexProvider);
    final shopOrders = ref.watch(
      shopOrdersCancelledNotifierProvider.select(
        (state) => state.map(
          initial: (_) => _.shopOrders.entity[index],
          loadInProgress: (_) => _.shopOrders.entity[index],
          loadSuccess: (_) => _.shopOrders.entity[index],
          loadFailure: (_) => _.shopOrders.entity[index],
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
        ),
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
    final index = ref.watch(shopOrderCardCancelledIndexProvider);
    final shopOrders = ref.watch(
      shopOrdersCancelledNotifierProvider.select(
        (state) => state.map(
          initial: (_) => _.shopOrders.entity[index],
          loadInProgress: (_) => _.shopOrders.entity[index],
          loadSuccess: (_) => _.shopOrders.entity[index],
          loadFailure: (_) => _.shopOrders.entity[index],
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
        ),
      ],
    );
  }
}
