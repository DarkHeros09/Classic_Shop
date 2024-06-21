import 'package:classic_shop/src/helpers/custom_shimmer.dart';
import 'package:flutter/material.dart';

class LoadingTextBannerCard extends StatelessWidget {
  const LoadingTextBannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomShimmer(
        height: 24,
        width: double.infinity,
        borderRadius: 4,
      ),
    );
  }
}
