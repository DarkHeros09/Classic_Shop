import 'package:classic_shop/src/features/core/data/response_headers_cache.dart';
import 'package:classic_shop/src/features/core/data/sembast_database.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sembast/sembast.dart';

final dbProvider = FutureProvider<Database>((ref) => SembastInit().init());

final sembastProvider = Provider((ref) {
  return SembastDatabase(ref.watch(dbProvider).requireValue);
});

final responseHeaderCacheProvider = Provider((ref) {
  return ResponseHeadersCache(ref.watch(sembastProvider));
});
