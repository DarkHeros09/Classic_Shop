import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingLocalService {
  const OnBoardingLocalService(this._sharedPreferences);

  final SharedPreferences _sharedPreferences;

  static const spkIsOnBoardingShown = 'isOnBoardingShown';

  Future<bool> setIsOnBoardingShown({required bool isOnBoardingShown}) async {
    return _sharedPreferences.setBool(spkIsOnBoardingShown, isOnBoardingShown);
  }

  bool? getIsOnBoardingShown() {
    return _sharedPreferences.getBool(spkIsOnBoardingShown);
  }
}
