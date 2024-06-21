import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 16,
        ),
        Text(
          'حقيبة التسوق',
          style: appTheme.textTheme.headlineSmall,
        ),
        TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          unselectedLabelColor: const Color(0xFF7E7C7C),
          splashBorderRadius: const BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(4),
          ),
          labelStyle: appTheme.textTheme.bodyLarge
              ?.copyWith(fontWeight: FontWeight.w700),
          unselectedLabelStyle:
              appTheme.textTheme.titleMedium?.copyWith(color: Colors.grey),
          tabs: const [
            Tab(
              text: 'المشتريات',
            ),
            Tab(
              text: 'قائمة الامنيات',
            ),
          ],
        )
      ],
    );
  }
}
