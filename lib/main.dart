import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Add this import
import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive); // Hide status/navigation bars
  runApp(const MyApp());
}
