// ignore_for_file: depend_on_referenced_packages

import 'dart:developer';

import 'package:classic_shop/src/features/core/data/pagination_config.dart';
import 'package:classic_shop/src/features/core/data/sembast_database.dart';
import 'package:classic_shop/src/features/shop_order/core/data/shop_order_dto.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:sembast/sembast.dart';

class ShopOrderLocalService {
  ShopOrderLocalService(this._sembastDatabase);

  final SembastDatabase _sembastDatabase;
  // final _store = intMapStoreFactory.store('products');

  Future<void> upsertPage(List<ShopOrderDTO> dtos, int page, String uri) async {
    final store = intMapStoreFactory.store(uri);
    final sembastPage = page - 1;

    await store
        .records(
          dtos.mapIndexed(
            (index, _) => index + PaginationConfig.itemsPerPage * sembastPage,
          ),
        )
        .put(
          _sembastDatabase.instance,
          dtos.map((e) => e.toJson()).toList(),
        );
  }

  Future<List<ShopOrderDTO>> getPage(int page, String uri) async {
    debugPrint('_locallPage $page');
    debugPrint('_locallUri $uri');
    final store = intMapStoreFactory.store(uri);
    // final sembastPage = page - 1;

    final records = await store.find(
      _sembastDatabase.instance,
      // finder: Finder(
      //   limit: PaginationConfig.itemsPerPage,
      //   offset: PaginationConfig.itemsPerPage * sembastPage,
      // ),
    );

    final a = records.map((e) => ShopOrderDTO.fromJson(e.value)).toList();

    log('_locall $a');

    return a;
  }

  Future<int> getLocalPageCount(String uri) async {
    final store = intMapStoreFactory.store(uri);
    final productsCount = await store.count(_sembastDatabase.instance);
    return (productsCount / PaginationConfig.itemsPerPage).ceil();
  }

  Future<void> deletePage(int page, String uri) async {
    final store = intMapStoreFactory.store(uri);
    final sembastPage = page - 1;
    await store.delete(
      _sembastDatabase.instance,
      finder: Finder(
        limit: PaginationConfig.itemsPerPage,
        offset: PaginationConfig.itemsPerPage * sembastPage,
      ),
    );
  }

  Future<void> deleteAllProducts(String uri) async {
    final store = intMapStoreFactory.store(uri);
    await store.drop(_sembastDatabase.instance);
  }
}
