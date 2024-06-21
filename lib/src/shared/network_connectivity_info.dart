import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:riverpod/riverpod.dart';

abstract class INetworkConnectivityInfo {
  Future<bool> get isConnected;
  Future<List<ConnectivityResult>> get connectivityResult;
  Stream<List<ConnectivityResult>> get onConnectivityChanged;
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
    if (result.contains(ConnectivityResult.none)) {
      return false;
    }
    return true;
  }

  @override
  Future<List<ConnectivityResult>> get connectivityResult async {
    return connectivity.checkConnectivity();
  }

  @override
  Stream<List<ConnectivityResult>> get onConnectivityChanged =>
      connectivity.onConnectivityChanged;
}
