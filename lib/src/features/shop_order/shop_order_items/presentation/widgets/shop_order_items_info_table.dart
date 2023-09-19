import 'package:classic_shop/src/features/shop_order/shop_order_items/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ShopOrderItemsInfoTable extends ConsumerWidget {
  const ShopOrderItemsInfoTable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final shopOrderItems = ref.watch(
      shopOrderItemsNotifierProvider.select(
        (value) => value.mapOrNull(
          loadSuccess: (value) => value.shopOrderItems.entity.first,
        ),
      ),
    );
    final total =
        num.tryParse(shopOrderItems?.orderTotal ?? '')?.toStringAsFixed(2);
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Table(
          columnWidths: const {
            0: FractionColumnWidth(.31),
            1: FractionColumnWidth(.69)
          },
          border: TableBorder.all(
            style: BorderStyle.none,
          ),
          children: [
            TableRow(
              children: [
                Text(
                  'عنوان الشحن:',
                  style: appTheme.textTheme.bodySmall
                      ?.copyWith(color: const Color(0xff858080)),
                ),
                Text(
                  '${shopOrderItems?.addressLine}, ${shopOrderItems?.city}.',
                  style: appTheme.textTheme.bodySmall,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
            const TableRow(
              children: [
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 16,
                )
              ],
            ),
            TableRow(
              children: [
                Text(
                  'طريقة الدفع:',
                  style: appTheme.textTheme.bodySmall
                      ?.copyWith(color: const Color(0xff858080)),
                ),
                Text(
                  shopOrderItems?.paymentType ?? '',
                  style: appTheme.textTheme.bodySmall,
                )
              ],
            ),
            const TableRow(
              children: [
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 16,
                )
              ],
            ),
            TableRow(
              children: [
                Text(
                  'الخصم:',
                  style: appTheme.textTheme.bodySmall
                      ?.copyWith(color: const Color(0xff858080)),
                ),
                Text(
                  '10 د.ل',
                  style: appTheme.textTheme.bodySmall,
                )
              ],
            ),
            const TableRow(
              children: [
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 16,
                )
              ],
            ),
            TableRow(
              children: [
                Text(
                  'التوصيل:',
                  style: appTheme.textTheme.bodySmall
                      ?.copyWith(color: const Color(0xff858080)),
                ),
                Text(
                  '${shopOrderItems?.deliveryPrice} د.ل',
                  style: appTheme.textTheme.bodySmall,
                )
              ],
            ),
            const TableRow(
              children: [
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 16,
                )
              ],
            ),
            TableRow(
              children: [
                Text(
                  'الإجمالي الكلي:',
                  style: appTheme.textTheme.bodySmall
                      ?.copyWith(color: const Color(0xff858080)),
                ),
                Row(
                  children: [
                    Text(
                      '$total د.ل',
                      style: appTheme.textTheme.bodySmall,
                    ),
                    const Icon(
                      Icons.price_check,
                    )
                  ],
                )
              ],
            ),
            const TableRow(
              children: [
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 16,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
