import 'package:flutter/material.dart';

import 'package:islami_app_c17_mon/core/gen/assets.gen.dart';
import 'package:islami_app_c17_mon/layout/layout_view.dart';

/// native
/// widget
///
/// Navigation
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) {
            return const LayoutView();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    /// 1- push
    /// 2- pushReplacement
    /// 3- pushAndRemoveUntil
    /// 4- pop

    return Scaffold(
      body: Assets.images.splashBackground.image(
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
