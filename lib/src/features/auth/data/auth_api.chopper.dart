// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_string_interpolations, unnecessary_brace_in_string_interps
final class _$AuthApi extends AuthApi {
  _$AuthApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AuthApi;

  @override
  Future<Response<Map<String, dynamic>>> signUp(
      {required Map<String, dynamic> data}) {
    final Uri $url = Uri.parse('http://192.168.1.104:8080/api/v1/users');
    final Map<String, String> $headers = {
      'Content-Type': 'application/json',
    };
    final $body = data;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<Map<String, dynamic>>> signIn(
      {required Map<String, dynamic> data}) {
    final Uri $url = Uri.parse('http://192.168.1.104:8080/api/v1/users/login');
    final Map<String, String> $headers = {
      'Content-Type': 'application/json',
    };
    final $body = data;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<Map<String, dynamic>>> renewAccessToken({
    required String accessToken,
    required Map<String, dynamic> data,
  }) {
    final Uri $url =
        Uri.parse('http://192.168.1.104:8080/api/v1/auth/access-token');
    final Map<String, String> $headers = {
      'Authorization': accessToken,
      'Content-Type': 'application/json',
    };
    final $body = data;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_string_interpolations, unnecessary_brace_in_string_interps
final class _$AuthApi2 extends AuthApi2 {
  _$AuthApi2([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AuthApi2;

  @override
  Future<Response<void>> signOut({
    required String accessToken,
    required String userId,
    required Map<String, dynamic> data,
  }) {
    final Uri $url =
        Uri.parse('http://192.168.1.104:8080/usr/v1/users/${userId}/logout');
    final Map<String, String> $headers = {
      'Authorization': accessToken,
      'Content-Type': 'application/json',
    };
    final $body = data;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<void, void>($request);
  }
}
