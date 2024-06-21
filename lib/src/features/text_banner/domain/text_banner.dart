import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_banner.freezed.dart';

@freezed
class TextBanner with _$TextBanner {
  const factory TextBanner({
    required int id,
    required String name,
    required String description,
  }) = _TextBanner;
}
