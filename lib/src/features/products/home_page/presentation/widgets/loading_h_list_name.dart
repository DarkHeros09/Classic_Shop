import 'package:classic_shop/src/helpers/custom_shimmer.dart';
import 'package:flutter/material.dart';

class LoadingHListName extends StatelessWidget {
  const LoadingHListName({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomShimmer(
          height: 16,
          width: 80,
          borderRadius: 4,
        ),
        CustomShimmer(
          height: 14,
          width: 55,
          borderRadius: 4,
        ),
      ],
    );
  }
}
