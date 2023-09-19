import 'package:classic_shop/src/helpers/custom_shimmer.dart';
import 'package:flutter/material.dart';

class LoadingProductCard extends StatelessWidget {
  const LoadingProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomShimmer(
          height: 224,
          width: 190,
          borderRadius: 10,
        ),
        SizedBox(
          height: 5,
        ),
        CustomShimmer(
          height: 16,
          width: 126,
          borderRadius: 2,
        ),
        SizedBox(
          height: 5,
        ),
        CustomShimmer(
          height: 16,
          width: 63,
          borderRadius: 2,
        ),
      ],
    );
  }
}
