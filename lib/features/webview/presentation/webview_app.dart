import 'package:flutter/material.dart';
import '../../../core/constants.dart';
import '../../../core/services/connectivity_service.dart';
import '../controllers/webview_controller.dart';
import '../widgets/custom_webview.dart';

class WebviewApp extends StatefulWidget {
  const WebviewApp({super.key});

  @override
  State<WebviewApp> createState() => _WebviewAppState();
}

class _WebviewAppState extends State<WebviewApp> {
  late final WebviewController _controller;
  bool _isOnline = true;

  @override
  void initState() {
    super.initState();
    final connectivityService = ConnectivityService();
    _controller = WebviewController(connectivityService);

    _controller.checkInitialConnection().then((connected) {
      setState(() => _isOnline = connected);
    });

    _controller.connectionStream.listen((connected) {
      setState(() => _isOnline = connected);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isOnline
          ? const CustomWebview(initialUrl: AppConstants.baseUrl)
          : _buildNoConnection(),
    );
  }

  Widget _buildNoConnection() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.wifi_off, size: 80, color: AppConstants.errorColor),
          const SizedBox(height: 16),
          const Text(
            AppConstants.noInternetMsg,
            style: TextStyle(fontSize: 18, color: AppConstants.errorColor),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppConstants.primaryColor,
              foregroundColor: Colors.white
            ),
            onPressed: () async {
              final connected = await _controller.checkInitialConnection();
              if (mounted) {
                setState(() => _isOnline = connected);
              }
            },
            child: const Text(AppConstants.tryAgainMsg),
          ),
        ],
      ),
    );
  }
}
