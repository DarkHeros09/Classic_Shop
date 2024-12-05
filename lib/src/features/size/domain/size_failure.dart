import 'package:freezed_annotation/freezed_annotation.dart';

part 'size_failure.freezed.dart';

@freezed
class SizeFailure with _$SizeFailure {
  const SizeFailure._();
  const factory SizeFailure.api(int? errorCode) = _Api;
  const factory SizeFailure.server(String? message) = _Server;
  // const factory SizeFailure.storage() = _Storage;
}
