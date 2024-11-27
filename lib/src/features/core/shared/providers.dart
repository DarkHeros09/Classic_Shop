import 'package:classic_shop/src/features/core/data/response_headers_cache.dart';
import 'package:classic_shop/src/features/core/data/sembast_database.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sembast/sembast.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
Future<Database> db(Ref ref) async {
  return SembastInit().init();
}

@Riverpod(keepAlive: true)
SembastDatabase sembast(Ref ref) {
  return SembastDatabase(ref.watch(dbProvider).requireValue);
}

@Riverpod(keepAlive: true)
ResponseHeadersCache responseHeaderCache(Ref ref) {
  return ResponseHeadersCache(ref.watch(sembastProvider));
}

//////////* Presentation ////////////

@Riverpod(keepAlive: true, dependencies: [])
StatefulNavigationShell widgetChild(Ref ref) {
  throw UnimplementedError();
}
