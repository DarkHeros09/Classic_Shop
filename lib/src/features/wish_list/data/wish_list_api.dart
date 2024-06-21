import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:classic_shop/gen/env.g.dart';
import 'package:classic_shop/src/features/auth/data/auth_interceptor.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// ignore: depend_on_referenced_packages
import 'package:http/io_client.dart';

part 'wish_list_api.chopper.dart';

@ChopperApi(baseUrl: 'http://${Env.httpAddress}/usr/v1')
abstract class WishListApi extends ChopperService {
  static WishListApi create(Ref ref) {
    final client = ChopperClient(
      client: IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 10),
      ),
      services: [_$WishListApi()],
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
        AuthInterceptor(ref: ref),
      ],
      authenticator: AuthInterceptor(ref: ref),
    );

    return _$WishListApi(client);
  }

  @Get(
    path: '/users/{id}/wish-lists/items',
  )
  Future<Response<List<Map<String, dynamic>>>> getWishListItems({
    @Header('If-None-Match') required String ifNoneMatch,
    @Path('id') required String userId,
  });

  @Post(
    path: '/users/{id}/wish-lists/{wishListId}/items',
  )
  Future<Response<Map<String, dynamic>>> createWishListItem({
    @Path('id') required String userId,
    @Path() required String wishListId,
    @Body() required Map<String, dynamic> data,
  });

  @Put(
    path: '/users/{id}/wish-lists/{wishListId}/items/{itemId}',
  )
  Future<Response<Map<String, dynamic>>> updateWishListItem({
    @Path('id') required String userId,
    @Path() required String wishListId,
    @Path('itemId') required String wishListItemId,
    @Body() required Map<String, dynamic> data,
  });

  @Delete(
    path: '/users/{id}/wish-lists/{wishListId}/items/{itemId}',
  )
  Future<Response<Map<String, dynamic>>> deleteWishListItem({
    @Path('id') required String userId,
    @Path() required String wishListId,
    @Path('itemId') required String wishListItemId,
  });

  @Delete(
    path: '/users/{id}/wish-lists/{wishListId}',
  )
  Future<Response<Map<String, dynamic>>> deleteAllWishListItems({
    @Path('id') required String userId,
    @Path() required String wishListId,
  });
}
