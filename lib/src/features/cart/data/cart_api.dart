import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:classic_shop/gen/env.g.dart';
import 'package:classic_shop/src/features/auth/data/auth_interceptor.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// ignore: depend_on_referenced_packages
import 'package:http/io_client.dart';

part 'cart_api.chopper.dart';

@ChopperApi(baseUrl: 'http://${Env.httpAddress}/usr/v1')
abstract class CartApi extends ChopperService {
  static CartApi create(Ref ref) {
    final client = ChopperClient(
      client: IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 10),
      ),
      services: [_$CartApi()],
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
        AuthInterceptor(ref: ref),
      ],
      authenticator: AuthInterceptor(ref: ref),
    );

    return _$CartApi(client);
  }

  @Get(
    path: '/users/{id}/carts/items',
  )
  Future<Response<List<Map<String, dynamic>>>> getCartItems({
    @Header('If-None-Match') required String ifNoneMatch,
    @Path('id') required String userId,
  });

  @Post(
    path: '/users/{id}/carts/{cartId}/items',
  )
  Future<Response<Map<String, dynamic>>> createCartItem({
    @Path('id') required String userId,
    @Path() required String cartId,
    @Body() required Map<String, dynamic> data,
  });

  @Put(
    path: '/users/{id}/carts/{cartId}/items/{itemId}',
  )
  Future<Response<Map<String, dynamic>>> updateCartItem({
    @Path('id') required String userId,
    @Path() required String cartId,
    @Path('itemId') required String shoppingCartItemId,
    @Body() required Map<String, dynamic> data,
  });

  @Delete(
    path: '/users/{id}/carts/{cartId}/items/{itemId}',
  )
  Future<Response<Map<String, dynamic>>> deleteCartItem({
    @Path('id') required String userId,
    @Path() required String cartId,
    @Path('itemId') required String shoppingCartItemId,
  });

  @Delete(
    path: '/users/{id}/carts/{cartId}',
  )
  Future<Response<Map<String, dynamic>>> deleteAllCartItems({
    @Path('id') required String userId,
    @Path() required String cartId,
  });
}
