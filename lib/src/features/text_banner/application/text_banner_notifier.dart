import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:classic_shop/src/features/text_banner/data/text_banner_repository.dart';
import 'package:classic_shop/src/features/text_banner/domain/text_banner.dart';
import 'package:classic_shop/src/features/text_banner/domain/text_banner_failure.dart';
import 'package:classic_shop/src/features/text_banner/shared/providers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'text_banner_notifier.freezed.dart';

@freezed
class TextBannerState with _$TextBannerState {
  const TextBannerState._();
  const factory TextBannerState.initial(
    Fresh<List<TextBanner>> textBanners,
  ) = _Initial;
  const factory TextBannerState.loadInProgress(
    Fresh<List<TextBanner>> textBanners,
  ) = _LoadInProgress;
  const factory TextBannerState.loadSuccess(
    Fresh<List<TextBanner>> textBanners,
  ) = _LoadSuccess;
  const factory TextBannerState.loadFailure(
    Fresh<List<TextBanner>> textBanners,
    TextBannerFailure failure,
  ) = _LoadFailure;
}

class TextBannerNotifier extends Notifier<TextBannerState> {
  late final TextBannerRepository _repository;
  @override
  TextBannerState build() {
    _repository = ref.watch(textBannerRepositoryProvider);
    return state = TextBannerState.initial(Fresh.yes([]));
  }

  Future<void> fetchTextBanner() async {
    // Maybe remove in progress
    state = TextBannerState.loadInProgress(state.textBanners);
    final textBannersOrFailure = await _repository.fetchTextBanner();
    state = await textBannersOrFailure.fold(
      (l) => TextBannerState.loadFailure(state.textBanners, l),
      (r) async {
        // await _repository.setTextBanner(r.entity);
        return TextBannerState.loadSuccess(r);
      },
    );
  }
}
