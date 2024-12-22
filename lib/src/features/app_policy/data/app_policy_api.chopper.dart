// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_policy_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$AppPolicyApi extends AppPolicyApi {
  _$AppPolicyApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = AppPolicyApi;

  @override
  Future<Response<Map<String, dynamic>>> getAppPolicy(
      {required String ifNoneMatch}) {
    final Uri $url = Uri.parse('http://192.168.0.155:8080/api/v1/app-policy');
    final Map<String, String> $headers = {
      'If-None-Match': ifNoneMatch,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }
}
