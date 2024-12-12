import 'package:classic_shop/src/features/core/data/response_headers_cache.dart';
import 'package:classic_shop/src/features/core/data/sembast_database.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
SembastDatabase sembastDatabase(Ref ref) {
  return SembastDatabase();
}

// @Riverpod(keepAlive: true)
// SembastDatabase sembast(Ref ref) {
//   return SembastDatabase(ref.watch(sembastDatabaseProvider).requireValue);
// }

@Riverpod(keepAlive: true)
ResponseHeadersCache responseHeaderCache(Ref ref) {
  return ResponseHeadersCache(ref.watch(sembastDatabaseProvider));
}

//////////* Presentation ////////////

@Riverpod(keepAlive: true, dependencies: [])
StatefulNavigationShell widgetChild(Ref ref) {
  throw UnimplementedError();
}
