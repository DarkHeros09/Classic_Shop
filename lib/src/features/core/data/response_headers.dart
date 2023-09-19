import 'package:chopper/chopper.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_headers.freezed.dart';
part 'response_headers.g.dart';

@freezed
class ResponseHeaders with _$ResponseHeaders {
  const factory ResponseHeaders({
    String? etag,
    int? maxPage,
  }) = _ResponseHeaders;
  const ResponseHeaders._();

  factory ResponseHeaders.parse(Response<dynamic> response) {
    final maxPageString = response.headers['max-page'];
    return ResponseHeaders(
      etag: response.headers['etag'],
      maxPage: maxPageString == null ? null : int.parse(maxPageString),
    );
  }

  factory ResponseHeaders.fromJson(Map<String, dynamic> json) =>
      _$ResponseHeadersFromJson(json);
}
