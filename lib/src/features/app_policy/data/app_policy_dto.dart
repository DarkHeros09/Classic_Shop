import 'package:classic_shop/src/features/app_policy/domain/app_policy.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_policy_dto.freezed.dart';
part 'app_policy_dto.g.dart';

@freezed
class AppPolicyDTO with _$AppPolicyDTO {
  const factory AppPolicyDTO({
    required int id,
    required String? policy,
    required DateTime? createdAt,
    required DateTime? updatedAt,
  }) = _AppPolicyDTO;
  const AppPolicyDTO._();

  factory AppPolicyDTO.fromJson(Map<String, dynamic> json) =>
      _$AppPolicyDTOFromJson(json);

  factory AppPolicyDTO.fromDomain(AppPolicy _) {
    return AppPolicyDTO(
      id: _.id,
      policy: _.policy,
      createdAt: _.createdAt,
      updatedAt: _.updatedAt,
    );
  }

  AppPolicy toDomain() {
    return AppPolicy(
      id: id,
      policy: policy,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
