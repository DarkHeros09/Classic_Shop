import 'package:flutter/material.dart';

class CheckoutAddressSubTitle extends StatelessWidget {
  const CheckoutAddressSubTitle({
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
          'عنوان التسليم',
          style: appTheme.textTheme.bodyLarge!
              .copyWith(fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
