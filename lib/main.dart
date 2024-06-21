import 'package:classic_shop/src/app_widget.dart';
import 'package:classic_shop/src/app_widget_startup.dart';
import 'package:classic_shop/src/shared/providers.dart';
import 'package:classic_shop/src/themes/assets.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // final db = await SembastInit().init();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // final deviceInfo = await AppSetId().getIdentifier();
  // final firebaseMessaging = FirebaseMessaging.instance;
  // await fcm.requestPermission(provisional: true);
  // debugPrint('FCMM: $fcmToken');
  // final isarDB = await IsarInit().init();
  final assets = await initAssets();
  final darkModeAssets = await initAssets(isDarkMode: true);
  final sharedPreferences = await SharedPreferences.getInstance();
  // final isDarkMode = sharedPreferences.getBool('isDarkMode') ?? false;
  // GoogleFonts.config.allowRuntimeFetching = false;
  // usePathUrlStrategy();
  // if (isDarkMode) {
  //   SystemChrome.setSystemUIOverlayStyle(
  //     const SystemUiOverlayStyle(
  //       statusBarBrightness: Brightness.light,
  //       // statusBarColor: Colors.black.withOpacity(0),
  //       statusBarColor: Color(0xFFFAFAFA),
  //       statusBarIconBrightness: Brightness.dark,
  //     ),
  //   );
  // }

  runApp(
    ProviderScope(
      key: UniqueKey(),
      overrides: [
        siAssetsProvider.overrideWithValue(assets),
        darkSiAssetsProvider.overrideWithValue(darkModeAssets),
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
      ],
      child: AppWidgetStartup(
        onLoaded: (context) {
          return const AppWidget();
        },
      ),
    ),
  );
}
