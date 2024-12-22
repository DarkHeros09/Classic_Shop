import 'package:classic_shop/src/app_widget.dart';
import 'package:classic_shop/src/app_widget_startup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  RendererBinding.instance.deferFirstFrame();
  FlutterNativeSplash.remove();

  runApp(
    ProviderScope(
      key: UniqueKey(),
      child: AppWidgetStartup(
        onLoaded: (context) {
          return const AppWidget();
        },
      ),
    ),
  );
}
