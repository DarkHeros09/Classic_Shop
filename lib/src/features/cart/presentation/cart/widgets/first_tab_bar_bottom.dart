import 'package:classic_shop/src/features/cart/shared/providers.dart';
import 'package:classic_shop/src/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FirstTabBottom extends StatelessWidget {
  const FirstTabBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 40,
            child: Row(
              children: [
                DiscountOkButton(),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: DiscountTextField(),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TotalBottomBar(),
          SizedBox(
            height: 20,
          ),
          FinishPurchaseButton(),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

class DiscountOkButton extends StatelessWidget {
  const DiscountOkButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff000000),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
      child: Text(
        'إضغط للتأكد',
        style: appTheme.textTheme.labelLarge!.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}

class DiscountTextField extends StatelessWidget {
  const DiscountTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(8),
        hintText: 'كود الخصم',
        hintStyle: appTheme.textTheme.labelLarge!.copyWith(color: Colors.grey),
        fillColor: const Color(0xffF9F9F9),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
    );
  }
}

class TotalBottomBar extends ConsumerWidget {
  const TotalBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final state = ref.watch(cartNotifierProvider);
    final cartItemsPrice = state.mapOrNull(
      loadSuccess: (_) => _.cartItems.entity,
    );
    final sum = cartItemsPrice?.fold<num>(
          0,
          (previous, value) => previous + (num.parse(value.price!) * value.qty),
        ) ??
        0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'الإجمالي:',
          style: appTheme.textTheme.titleMedium!.copyWith(
            color: const Color(0xff7d7979),
          ),
        ),
        Row(
          children: [
            Text(
              '${sum.toStringAsFixed(2)} د.ل',
              style: appTheme.textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            const Icon(Icons.price_check)
          ],
        )
      ],
    );
  }
}

class FinishPurchaseButton extends ConsumerWidget {
  const FinishPurchaseButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    // final previousPath = ref.watch(previousPathProvider.notifier);
    return InkWell(
      onTap: () {
        // previousPath.path = '/cart/checkout';
        context.goNamed(AppRoute.checkout.name);
      },
      child: Container(
        height: 56,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          color: Color(0xFF9D331F),
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'إتمام عملية الشراء',
              style:
                  appTheme.textTheme.bodySmall?.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
