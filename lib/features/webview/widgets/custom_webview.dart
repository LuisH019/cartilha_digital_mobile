import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../../core/constants.dart';

class CustomWebview extends StatelessWidget {
  final String initialUrl;

  const CustomWebview({super.key, required this.initialUrl});

  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
    controller.clearCache();
    controller.loadRequest(Uri.parse(initialUrl));
    return WebViewWidget(controller: controller);
  }
}