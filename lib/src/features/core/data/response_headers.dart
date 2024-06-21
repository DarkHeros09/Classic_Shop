import 'package:chopper/chopper.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_headers.freezed.dart';
part 'response_headers.g.dart';

@freezed
class ResponseHeaders with _$ResponseHeaders {
  const factory ResponseHeaders({
    String? etag,
    bool? nextAvailable,
  }) = _ResponseHeaders;
  const ResponseHeaders._();

  factory ResponseHeaders.parse(Response<dynamic> response) {
    final nextAvailableString = response.headers['next-available'];
    return ResponseHeaders(
      etag: response.headers['etag'],
      nextAvailable:
          nextAvailableString == null ? null : bool.parse(nextAvailableString),
    );
  }

  factory ResponseHeaders.fromJson(Map<String, dynamic> json) =>
      _$ResponseHeadersFromJson(json);
}
