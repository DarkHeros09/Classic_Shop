import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:riverpod/riverpod.dart';

abstract class INetworkConnectivityInfo {
  Future<bool> get isConnected;
  Future<ConnectivityResult> get connectivityResult;
  Stream<ConnectivityResult> get onConnectivityChanged;
}

final connectivityProvider = Provider<Connectivity>((ref) {
  return Connectivity();
});

final networkConnectivityProvider = Provider<INetworkConnectivityInfo>((ref) {
  return NetworkConnectivityInfoImpl(
    connectivity: ref.watch(connectivityProvider),
  );
});

class NetworkConnectivityInfoImpl implements INetworkConnectivityInfo {
  const NetworkConnectivityInfoImpl({
    required this.connectivity,
  });
  final Connectivity connectivity;

  @override
  Future<bool> get isConnected async {
    final result = await connectivity.checkConnectivity();
    if (result != ConnectivityResult.none) {
      return true;
    }
    return false;
  }

  @override
  Future<ConnectivityResult> get connectivityResult async {
    return connectivity.checkConnectivity();
  }

  @override
  Stream<ConnectivityResult> get onConnectivityChanged =>
      connectivity.onConnectivityChanged;
}
