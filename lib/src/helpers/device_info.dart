import 'package:hooks_riverpod/hooks_riverpod.dart';

// Future<BaseDeviceInfo> getDeviceInfo() async {
//   final deviceInfoPlugin = DeviceInfoPlugin();
//   if (Platform.isAndroid) {
//     return deviceInfoPlugin.androidInfo;
//   }
//   if (Platform.isIOS) {
//     return deviceInfoPlugin.iosInfo;
//   }
//   return deviceInfoPlugin.deviceInfo;
// }

final fcmTokenProvider = Provider<String?>((ref) {
  throw UnimplementedError();
});
