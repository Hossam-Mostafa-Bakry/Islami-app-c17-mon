import 'package:flutter/material.dart';

import '../core/gen/assets.gen.dart';

class HadithView extends StatelessWidget {
  const HadithView({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.hadithBackgroundImg.provider(),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
