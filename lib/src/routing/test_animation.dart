import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class TestAnimation extends StatefulWidget {
  const TestAnimation({super.key});

  @override
  State<TestAnimation> createState() => _TestAnimationState();
}

class _TestAnimationState extends State<TestAnimation>
    with SingleTickerProviderStateMixin {
  late double height = 150;
  late double width = 150;
  late AlignmentDirectional aa = AlignmentDirectional.bottomCenter;
  late Animation<double> tween;
  late AnimationController controller;
  late Animation<double> opacity;
  bool active = false;
  double top = 40;

  void s() {
    setState(() {
      // height = height == 100 ? 50 : 100;
      // width = width == 100 ? 50 : 100;
      aa = aa == AlignmentDirectional.topCenter
          ? AlignmentDirectional.bottomCenter
          : AlignmentDirectional.topCenter;
      active = !active;
      top = top == 40 ? 0 : 40;
    });
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    tween = Tween<double>(begin: 40, end: 0).animate(controller)
      ..addListener(() {
        setState(() {
          // The state that has changed here is the animation object’s value.
        });
      });
    opacity = Tween<double>(begin: 1, end: 0).animate(controller)
      ..addListener(() {
        setState(() {
          // The state that has changed here is the animation object’s value.
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('ACTIVE: $active');
    return GestureDetector(
      onTap: () => setState(() {
        // active ? controller.reset() : controller.forward();
        active ? controller.reverse() : controller.forward();
        active = !active;
      }),
      child: Scaffold(
        appBar: AppBar(
          clipBehavior: Clip.none,
          // elevation: 5,
          actions: [
            const SizedBox(
              width: 16,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                if (active)
                  Positioned(
                    top: 80,
                    child: Container(
                      height: 25,
                      width: 25,
                      color: Colors.red,
                    ),
                  ).animate().moveY(
                        end: -60,
                        delay: const Duration(milliseconds: 500),
                      ),
                Positioned(
                  top: 20,
                  child: Container(
                    height: 26,
                    width: 26,
                    color: Colors.white,
                  ),
                ),
                Center(
                  child: Stack(
                    children: [
                      const Icon(Icons.shopping_bag)
                          .animate(
                            target: active ? 1 : 0,
                            autoPlay: false,
                            onComplete: (controller) {
                              controller.reset();
                              setState(() {
                                active = false;
                              });
                            },
                          )
                          // .shake(
                          //   offset: const Offset(1, 1),
                          //   delay: const Duration(milliseconds: 1500),
                          // )
                          // .shakeX()
                          .shakeY(
                            amount: 10,
                            hz: 2,
                            delay: const Duration(milliseconds: 1500),
                          ),
                    ],
                  ),
                ),

                // .fadeOut(
                //   curve: Curves.easeOut,
                //   duration: const Duration(milliseconds: 1000),
                // ),
              ],
            ),
            const SizedBox(
              width: 16,
            ),
          ],
        ),
        body: Center(
          child: AnimatedAlign(
            curve: Curves.easeIn,
            alignment: aa,
            // height: 150,
            // width: 150,
            // decoration: const BoxDecoration(
            //   color: Colors.redAccent,
            //   borderRadius: BorderRadius.all(Radius.circular(8)),
            // ),
            duration: const Duration(seconds: 5),
            child: Container(
              height: height,
              width: width,
              decoration: const BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ShopCartClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..addRect(const Rect.fromLTRB(0, 500, 500, 500))
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
