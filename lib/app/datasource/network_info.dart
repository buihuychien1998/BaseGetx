import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkInfoImpl {
  NetworkInfoImpl();
  Future<bool> get isConnected async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi) {
      return Future<bool>.value(true);
    }
    return Future<bool>.value(false);
  }
}
