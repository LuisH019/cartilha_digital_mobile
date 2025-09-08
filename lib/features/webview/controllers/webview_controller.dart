import '../../../core/services/connectivity_service.dart';

class WebviewController {
  final ConnectivityService connectivityService;

  WebviewController(this.connectivityService);

  Stream<bool> get connectionStream =>
      connectivityService.onConnectivityChanged;

  Future<bool> checkInitialConnection() =>
      connectivityService.checkConnection();
}
