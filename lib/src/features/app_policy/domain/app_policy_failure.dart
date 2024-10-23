import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_policy_failure.freezed.dart';

@freezed
class AppPolicyFailure with _$AppPolicyFailure {
  const AppPolicyFailure._();
  const factory AppPolicyFailure.server([String? message]) = _Server;
  const factory AppPolicyFailure.storage() = _Storage;
}
