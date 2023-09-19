import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingBrandChip extends StatelessWidget {
  const LoadingBrandChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade500,
      highlightColor: Colors.grey.shade400,
      child: const CircleAvatar(
        radius: 45,
      ),
    );
  }
}
