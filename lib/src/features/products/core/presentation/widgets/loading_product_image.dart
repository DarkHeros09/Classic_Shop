import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class LoadingProductImage extends StatelessWidget {
  const LoadingProductImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Skeletonizer.zone(
      effect: ShimmerEffect(
        baseColor: Colors.grey.shade500,
        highlightColor: Colors.grey.shade400,
      ),
      enableSwitchAnimation: true,
      containersColor: Colors.black,
      child: const Bone.square(
        size: 224,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
