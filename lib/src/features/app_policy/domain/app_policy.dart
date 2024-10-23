import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_policy.freezed.dart';

@freezed
class AppPolicy with _$AppPolicy {
  const factory AppPolicy({
    required int id,
    required String? policy,
    required DateTime? createdAt,
    required DateTime? updatedAt,
  }) = _AppPolicy;
}
