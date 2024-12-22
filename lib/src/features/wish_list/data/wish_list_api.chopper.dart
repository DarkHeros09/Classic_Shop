// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wish_list_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$WishListApi extends WishListApi {
  _$WishListApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = WishListApi;

  @override
  Future<Response<List<Map<String, dynamic>>>> getWishListItems({
    required String ifNoneMatch,
    required String userId,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.0.155:8080/usr/v1/users/${userId}/wish-lists/items');
    final Map<String, String> $headers = {
      'If-None-Match': ifNoneMatch,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client
        .send<List<Map<String, dynamic>>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<Map<String, dynamic>>> createWishListItem({
    required String userId,
    required String wishListId,
    required Map<String, dynamic> data,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.0.155:8080/usr/v1/users/${userId}/wish-lists/${wishListId}/items');
    final $body = data;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<Map<String, dynamic>>> updateWishListItem({
    required String userId,
    required String wishListId,
    required String wishListItemId,
    required Map<String, dynamic> data,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.0.155:8080/usr/v1/users/${userId}/wish-lists/${wishListId}/items/${wishListItemId}');
    final $body = data;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<Map<String, dynamic>>> deleteWishListItem({
    required String userId,
    required String wishListId,
    required String wishListItemId,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.0.155:8080/usr/v1/users/${userId}/wish-lists/${wishListId}/items/${wishListItemId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<Map<String, dynamic>>> deleteAllWishListItems({
    required String userId,
    required String wishListId,
  }) {
    final Uri $url = Uri.parse(
        'http://192.168.0.155:8080/usr/v1/users/${userId}/wish-lists/${wishListId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }
}
