import 'package:flutter/material.dart';

class CheckoutAppBar extends StatelessWidget {
  const CheckoutAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return SliverAppBar(
      surfaceTintColor: Colors.transparent,
      pinned: true,
      centerTitle: true,
      title: Text(
        'الدفع',
        style: appTheme.textTheme.headlineSmall,
      ),
    );
  }
}
