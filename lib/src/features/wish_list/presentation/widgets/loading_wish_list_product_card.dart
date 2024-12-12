import 'package:classic_shop/src/helpers/custom_shimmer.dart';
import 'package:flutter/material.dart';

class LoadingWishListProductCard extends StatelessWidget {
  const LoadingWishListProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    return Container(
      clipBehavior: Clip.hardEdge,
      height: 128,
      width: 396,
      decoration: BoxDecoration(
        color: isDarkMode ? const Color(0xFF0D0D0D) : Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x24000000),
            offset: Offset(0, 2),
            blurRadius: 4,
          ),
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Stack(
        children: [
          const CustomShimmer(
            height: 128,
            width: 128,
            borderRadius: 0,
          ),
          const Positioned(
            right: 144,
            top: 12,
            child: CustomShimmer(
              height: 16,
              width: 100,
              borderRadius: 2,
            ),
          ),
          const Positioned(
            right: 144,
            top: 43,
            child: CustomShimmer(
              height: 16,
              width: 200,
              borderRadius: 2,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: IconButton(
              onPressed: null,
              disabledColor: appTheme.disabledColor,
              icon: const Icon(
                Icons.more_vert,
              ),
            ),
          ),
          const Positioned(
            bottom: 12,
            left: 16,
            child: CustomShimmer(
              height: 16,
              width: 80,
              borderRadius: 2,
            ),
          ),
          // const Positioned(
          //   right: 144,
          //   bottom: 12,
          //   child: CustomShimmer(
          //     height: 20,
          //     width: 100,
          //     borderRadius: 2,
          //   ),
          // ),
        ],
      ),
    );
  }
}
