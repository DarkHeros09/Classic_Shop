import 'package:flutter/material.dart';

class ProductsShowAllCard extends StatelessWidget {
  const ProductsShowAllCard({
    required this.onTap,
    super.key,
  });

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            height: 224,
            width: 190,
            decoration: BoxDecoration(
              border: isDarkMode ? Border.all(color: Colors.white) : null,
              // gradient: LinearGradient(
              //   colors: [Color(0xffee0979), Color(0xffff6a00)],
              //   stops: [0, 1],
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomRight,
              // ),
              gradient: const LinearGradient(
                colors: [Color(0xffcb356b), Color(0xffbd3f32)],
                stops: [0, 1],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'عرض الكل',
                    style: appTheme.textTheme.headlineSmall
                        ?.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
