import 'package:classic_shop/src/features/app_policy/data/app_policy_repository.dart';
import 'package:classic_shop/src/features/app_policy/domain/app_policy.dart';
import 'package:classic_shop/src/features/app_policy/domain/app_policy_failure.dart';
import 'package:classic_shop/src/features/app_policy/shared/providers.dart';
import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'app_policy_notifier.freezed.dart';

@freezed
class AppPolicyState with _$AppPolicyState {
  const AppPolicyState._();
  const factory AppPolicyState.initial(
    Fresh<AppPolicy> appPolicy,
  ) = _Initial;
  const factory AppPolicyState.loadInProgress(
    Fresh<AppPolicy> appPolicy,
  ) = _LoadInProgress;
  const factory AppPolicyState.loadSuccess(
    Fresh<AppPolicy> appPolicy,
  ) = _LoadSuccess;
  const factory AppPolicyState.loadFailure(
    Fresh<AppPolicy> appPolicy,
    AppPolicyFailure failure,
  ) = _LoadFailure;
}

class AppPolicyNotifier extends Notifier<AppPolicyState> {
  late final AppPolicyRepository _repository;
  @override
  AppPolicyState build() {
    _repository = ref.watch(appPolicyRepositoryProvider);
    return state = AppPolicyState.initial(
      Fresh.no(
        const AppPolicy(
          id: 0,
          policy: null,
          createdAt: null,
          updatedAt: null,
        ),
      ),
    );
  }

  Future<void> fetchAppPolicy() async {
    // Maybe remove in progress
    state = AppPolicyState.loadInProgress(state.appPolicy);
    final appPolicysOrFailure = await _repository.fetchAppPolicy();
    state = await appPolicysOrFailure.fold(
      (l) => AppPolicyState.loadFailure(state.appPolicy, l),
      (r) {
        // await _repository.setAppPolicy(r.entity);
        return AppPolicyState.loadSuccess(r);
      },
    );
  }
}
