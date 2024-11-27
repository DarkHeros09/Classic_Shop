import 'package:classic_shop/firebase_options.dart';
import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:classic_shop/src/features/notification/shared/providers.dart';
import 'package:classic_shop/src/features/splash/presentation/splash_page.dart';
import 'package:classic_shop/src/shared/providers.dart';
import 'package:classic_shop/src/themes/assets.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_widget_startup.g.dart';

/// list of providers to be warmed up
@Riverpod(keepAlive: true)
Future<void> appStartup(Ref ref) async {
  // await for all initialization code to be complete before returning
  await Future.wait([
    // App assets
    ref.watch(initAssetsProvider().future),
    ref.watch(initAssetsProvider(isDarkMode: true).future),
    // Firebase init
    Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    ),
    // DeviceInfo init
    ref.watch(deviceInfoProvider.future),
    //SembestDB init
    ref.watch(dbProvider.future),
    // sharedPrefrences int
    ref.watch(sharedPreferencesProvider.future),
  ]);
  // ref.watch(sharedPreferencesProvider).requireValue;
  final fcm = ref.watch(firebaseMessagingProvider);
  await fcm.requestPermission(provisional: true);
}

class AppWidgetStartup extends ConsumerWidget {
  const AppWidgetStartup({
    required this.onLoaded,
    super.key,
  });
  final WidgetBuilder onLoaded;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appStartupState = ref.watch(appStartupProvider);
    return appStartupState.when(
      data: (_) => onLoaded(context),
      loading: SplashPage.new,
      error: (e, st) => AppStartupErrorWidget(
        message: e.toString(),
        onRetry: () {
          ref
            ..invalidate(sharedPreferencesProvider)
            ..invalidate(appStartupProvider);
        },
      ),
    );
  }
}

class AppStartupLoadingWidget extends StatelessWidget {
  const AppStartupLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

class AppStartupErrorWidget extends StatelessWidget {
  const AppStartupErrorWidget({
    required this.message,
    required this.onRetry,
    super.key,
  });
  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(message, style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: onRetry,
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
