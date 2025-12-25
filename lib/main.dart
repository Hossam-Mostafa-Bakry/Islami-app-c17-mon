import 'package:flutter/material.dart';
import 'package:islami_app_c17_mon/core/theme/theme_manager.dart';
import 'package:islami_app_c17_mon/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeManager.themeData,
      home: SplashView(),
    );
  }
}
