import 'package:flutter/material.dart';
import 'package:islami_app_c17_mon/core/gen/assets.gen.dart';
import 'package:islami_app_c17_mon/core/theme/color_pallete.dart';

class MostRecentlyCardWidget extends StatelessWidget {
  const MostRecentlyCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      width: 280,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: ColorPallete.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Al-Anbiya",
                style: theme.textTheme.titleLarge?.copyWith(
                  color: Colors.black,
                ),
              ),
              Text(
                "الأنبياء",
                style: theme.textTheme.titleLarge?.copyWith(
                  color: Colors.black,
                ),
              ),
              Text(
                "112 Verses  ",
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Expanded(child: Assets.images.mostRecentImg.image()),
        ],
      ),
    );
  }
}
