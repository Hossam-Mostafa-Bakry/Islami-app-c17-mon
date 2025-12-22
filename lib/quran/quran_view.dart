import 'package:flutter/material.dart';
import 'package:islami_app_c17_mon/core/gen/assets.gen.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.quranBackgroundImg.provider(),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
