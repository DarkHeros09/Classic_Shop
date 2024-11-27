import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

// class LoadingCarouselCard extends StatelessWidget {
//   const LoadingCarouselCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Padding(
//       padding: EdgeInsets.symmetric(horizontal: 16),
//       child: CustomShimmer(
//         height: 136,
//         width: double.infinity,
//         borderRadius: 8,
//       ),
//     );
//   }
// }

class LoadingCarouselCard extends StatelessWidget {
  const LoadingCarouselCard({
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
      child: const Bone(
        height: 136,
        width: double.infinity,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    );
  }
}
