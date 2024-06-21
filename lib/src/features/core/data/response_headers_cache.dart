import 'package:classic_shop/src/features/core/data/response_headers.dart';
import 'package:classic_shop/src/features/core/data/sembast_database.dart';
import 'package:flutter/foundation.dart';
import 'package:sembast/sembast.dart';

class ResponseHeadersCache {
  ResponseHeadersCache(
    this._sembastDatabase,
  );
  final SembastDatabase _sembastDatabase;
  final _store = stringMapStoreFactory.store('headers');

  Future<void> saveHeaders(Uri uri, ResponseHeaders headers) async {
    await _store.record(uri.toString()).put(
          _sembastDatabase.instance,
          headers.toJson(),
        );
  }

  Future<ResponseHeaders?> getHeaders(Uri uri) async {
    final json =
        await _store.record(uri.toString()).get(_sembastDatabase.instance);
    return json == null ? null : ResponseHeaders.fromJson(json);
  }

  Future<void> deleteHeaders(Uri uri) async {
    await _store.record(uri.toString()).delete(_sembastDatabase.instance);
  }

  Future<void> deleteAllHeaders() async {
    debugPrint('DELETED THE HEADERS');
    await _store.drop(_sembastDatabase.instance);
  }
}
