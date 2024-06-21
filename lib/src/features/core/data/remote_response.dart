import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_response.freezed.dart';

@freezed
class RemoteResponse<T> with _$RemoteResponse<T> {
  const RemoteResponse._();
  const factory RemoteResponse.noConnection() = _NoConnection<T>;
  const factory RemoteResponse.noContent() = _NoContent<T>;
  const factory RemoteResponse.notModified({required bool nextAvailable}) =
      _NotModified<T>;
  const factory RemoteResponse.withNewData(
    T data, {
    required bool nextAvailable,
  }) = _WithNewData<T>;
}
