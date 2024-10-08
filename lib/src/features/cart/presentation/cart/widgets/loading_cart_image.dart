import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class LoadingCartImage extends StatelessWidget {
  const LoadingCartImage({
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
        size: double.infinity,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
    );
  }
}
