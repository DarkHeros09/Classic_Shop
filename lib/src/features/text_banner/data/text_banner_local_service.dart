import 'package:classic_shop/src/features/core/data/sembast_database.dart';
import 'package:classic_shop/src/features/text_banner/data/text_banner_dto.dart';
import 'package:sembast/sembast.dart';

abstract class ITextBannerLocalService {
  Future<List<TextBannerDTO>> fetchTextBanner();

  Future<void> setTextBanner(TextBannerDTO textBannerDTO);

  Future<TextBannerDTO?> getTextBanner(int textBannerId);

  Future<void> updateTextBanner(TextBannerDTO dto);

  Future<void> deleteTextBanner(int textBannerId);

  Future<void> deleteAllTextBanners();
}

class TextBannerLocalService implements ITextBannerLocalService {
  TextBannerLocalService(this._sembastDatabase);

  final SembastDatabase _sembastDatabase;
  final _store = intMapStoreFactory.store('textBanners');

  // static const wishListsKey = 'wishLists';

  @override
  Future<List<TextBannerDTO>> fetchTextBanner() async {
    final records = await _store.find(_sembastDatabase.instance);
    return records.map((e) => TextBannerDTO.fromJson(e.value)).toList();
  }

  @override
  Future<void> setTextBanner(TextBannerDTO dto) {
    return _store.record(dto.id).put(
          _sembastDatabase.instance,
          dto.toJson(),
        );
  }

  @override
  Future<TextBannerDTO?> getTextBanner(int textBannerId) async {
    final record =
        await _store.record(textBannerId).get(_sembastDatabase.instance);

    if (record != null) {
      return TextBannerDTO.fromJson(record);
    }
    return null;
  }

  @override
  Future<void> updateTextBanner(TextBannerDTO dto) async {
    await _store.record(dto.id).update(_sembastDatabase.instance, dto.toJson());
  }

  @override
  Future<void> deleteTextBanner(int textBannerId) async {
    await _store.record(textBannerId).delete(_sembastDatabase.instance);
  }

  @override
  Future<void> deleteAllTextBanners() async {
    await _store.drop(_sembastDatabase.instance);
  }
}
