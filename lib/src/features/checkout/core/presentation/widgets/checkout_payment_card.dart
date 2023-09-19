import 'package:flutter/material.dart';

class CheckoutPaymentSubTitle extends StatelessWidget {
  const CheckoutPaymentSubTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return SliverPadding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      sliver: SliverToBoxAdapter(
        child: Text(
          'طريقة الدفع',
          style: appTheme.textTheme.bodyLarge!
              .copyWith(fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
