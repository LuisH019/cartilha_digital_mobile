import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityService {
  final Connectivity _connectivity = Connectivity();
  final StreamController<bool> _controller = StreamController<bool>.broadcast();

  ConnectivityService() {
    _connectivity.onConnectivityChanged.listen((status) {
      _controller.add(status != ConnectivityResult.none);
    });
  }

  Stream<bool> get onConnectivityChanged => _controller.stream;

  Future<bool> checkConnection() async {
    final status = await _connectivity.checkConnectivity();
    return status != ConnectivityResult.none;
  }

  void dispose() {
    _controller.close();
  }
}
