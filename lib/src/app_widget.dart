import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:classic_shop/src/routing/app_router.dart';
import 'package:classic_shop/src/themes/theme_mode_notifier.dart';
import 'package:classic_shop/src/themes/themes.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final initializationProvider = FutureProvider((ref) async {
  late final authNotifier = ref.read(authNotifierProvider.notifier);
  await authNotifier.checkAndUpdateAuthStatus();
  return unit;
});

class AppWidget extends HookConsumerWidget {
  const AppWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late final themeMode =
        ref.watch(themeModeProvider.select((value) => value));
    late final goRouter = ref.watch(goRouterProvider);
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
    return MaterialApp.router(
      themeMode: themeMode,
      debugShowCheckedModeBanner: false,
      // debugShowMaterialGrid: true,
      // theme: myFlexLightColorScheme,
      theme: lightTheme,
      darkTheme: darkTheme,
      locale: const Locale('ar'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: goRouter,
      // home:
      // const Sizes(),
      // const Prices(),
      // const Settings(),
      // const AddAddress(),
      // const Addresss(),
      // const OrderDetails(),
      // const Orders(),
      // const SelectedCategory(),
      // const SearchPage(),
      // const SearchBar(),
      // const Checkout(),
      // ShoppingBag(
      //   wishList: wishList,
      // ),
      // const Categories(),
      // OnBoarding(
      //   one: one,
      //   two: two,
      //   three: three,
      // ),
      // const TestText(),
      // const Profile(),
      // const ProductDetail(),
      // const HomePage(),
      // const SignInPage(),
    );
  }
}
