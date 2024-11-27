import 'package:classic_shop/gen/assets.gen.dart';
import 'package:classic_shop/src/features/splash/application/splash_notifier.dart';
import 'package:classic_shop/src/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashPage extends StatefulHookConsumerWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        RendererBinding.instance.allowFirstFrame();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.black.withOpacity(0),
        statusBarIconBrightness: Brightness.light,
      ),
    );
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [
        SystemUiOverlay.top,
      ],
    );

    final controller = useAnimationController();
    controller.addListener(
      () {
        if (controller.isCompleted) {
          ref
              .read(splashNotifierProvider.notifier)
              .setIsSplashShown(isSplashShown: true);
        }
      },
    );
    return MaterialApp(
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      darkTheme: darkTheme,
      // locale: locale,
      home: MediaQuery.removeViewPadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        removeLeft: true,
        removeRight: true,
        child: Scaffold(
          body: Center(
            child: Image.asset(
              // bundle: rootBundle,
              Assets.android12splash.path,
              // scale: .89,
              filterQuality: FilterQuality.high,
            )
                .animate(
                  controller: controller,
                )
                .fadeOut(
                  delay: const Duration(milliseconds: 250),
                  duration: const Duration(milliseconds: 300),
                ),
          ),
        ),
      ),
    );
  }
}
