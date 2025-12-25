import 'package:flutter/material.dart';
import 'package:islami_app_c17_mon/core/theme/theme_manager.dart';
import 'package:islami_app_c17_mon/quran/quran_details_view.dart';
import 'package:islami_app_c17_mon/splash/splash_view.dart';

import 'layout/layout_view.dart';

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
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayoutView.routeName: (context) => const LayoutView(),
        QuranDetailsView.routeName: (context) => QuranDetailsView(),
      },
    );
  }
}
