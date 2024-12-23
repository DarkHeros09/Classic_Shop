import 'package:classic_shop/src/features/error/Presentation/error_page.dart';
import 'package:classic_shop/src/localization/locale_notifier.dart';
import 'package:classic_shop/src/routing/app_router.dart';
import 'package:classic_shop/src/themes/theme_mode_notifier.dart';
import 'package:classic_shop/src/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// final initializationProvider = FutureProvider((ref) async {
//   late final authNotifier = ref.read(authNotifierProvider.notifier);
//   await authNotifier.checkAndUpdateAuthStatus();
//   return unit;
// });

class AppWidget extends HookConsumerWidget {
  const AppWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late final themeMode = ref.watch(themeModeNotifierProvider);
    late final goRouter = ref.watch(goRouterProvider);
    late final rootNavigatorKey = ref.watch(rootNavigatorKeyProvider);
    late final locale = ref.watch(selectedLocaleProvider);
    // WidgetsBinding.instance.addPostFrameCallback(
    //   (_) => SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(
    //       statusBarColor: Colors.black.withAlpha(0),
    //       statusBarIconBrightness:
    //           themeMode != ThemeMode.dark ? Brightness.dark : Brightness.light,
    //     ),
    //   ),
    // );
    ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
      return ErrorPage(
        showHomeButton:
            goRouter.state?.topRoute?.parentNavigatorKey == rootNavigatorKey,
      );
    };
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness:
            themeMode == ThemeMode.dark ? Brightness.light : Brightness.dark,
      ),
      child: MaterialApp.router(
        // showPerformanceOverlay: true,
        themeMode: themeMode,
        debugShowCheckedModeBanner: false,
        // debugShowMaterialGrid: true,
        // theme: myFlexLightColorScheme,
        theme: lightTheme,
        darkTheme: darkTheme,
        locale: locale,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routerConfig: goRouter,
      ),
    );
  }
}
