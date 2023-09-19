import 'package:classic_shop/src/helpers/custom_shimmer.dart';
import 'package:flutter/material.dart';

class LoadingCategoryCard extends StatelessWidget {
  const LoadingCategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    return Container(
      clipBehavior: Clip.hardEdge,
      // margin: const EdgeInsets.symmetric(horizontal: 16),
      height: 128,
      width: double.infinity,
      decoration: BoxDecoration(
        color: isDarkMode ? const Color(0xFF0D0D0D) : Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x24000000),
            blurRadius: 4,
            offset: Offset(0, 2),
          )
        ],
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: const Row(
        children: [
          Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: 24,
                ),
                // Text(
                //   'جديد',
                //   style: appTheme.textTheme.headlineSmall,
                // ),
                CustomShimmer(height: 30, width: 120, borderRadius: 2)
              ],
            ),
          ),
          Expanded(
            child: CustomShimmer(
              borderRadius: 0,
              height: double.maxFinite,
              width: double.maxFinite,
            ),
          )
        ],
      ),
    );
  }
}
