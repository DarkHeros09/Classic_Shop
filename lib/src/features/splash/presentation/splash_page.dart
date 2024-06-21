import 'package:classic_shop/src/themes/assets.dart';
import 'package:classic_shop/src/themes/theme_mode_notifier.dart';
import 'package:classic_shop/src/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jovial_svg/jovial_svg.dart';

class SplashPage extends HookConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    late final themeMode =
        ref.watch(themeModeProvider.select((value) => value));
    if (themeMode != ThemeMode.dark) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarColor: Colors.black.withOpacity(0),
          statusBarIconBrightness: Brightness.dark,
        ),
      );
    } else {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarColor: Colors.black.withOpacity(0),
          statusBarIconBrightness: Brightness.light,
        ),
      );
    }
    final isDarkMode = appTheme.brightness == Brightness.dark;
    final logo = isDarkMode
        ? ref.watch(
            darkSiAssetsProvider.select(
              (value) => value
                  .singleWhere((element) => element.$1 == SvgAssets.logo.name)
                  .$2,
            ),
          )
        : ref.watch(
            siAssetsProvider.select(
              (value) => value
                  .singleWhere((element) => element.$1 == SvgAssets.logo.name)
                  .$2,
            ),
          );
    // Timer(const Duration(seconds: 3), () {
    //   context.goNamed(AppRoute.home.name);
    // });
    return MaterialApp(
      themeMode: themeMode,
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      locale: const Locale('ar'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: ScalableImageWidget(si: logo, scale: 2)
                .animate()
                .fadeIn(duration: const Duration(seconds: 2)),
          ),
        ),
      ),
    );
  }
}
