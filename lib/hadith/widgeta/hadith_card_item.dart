import 'package:flutter/material.dart';
import 'package:islami_app_c17_mon/core/gen/assets.gen.dart';
import 'package:islami_app_c17_mon/core/theme/color_pallete.dart';
import 'package:islami_app_c17_mon/models/hadith_data.dart';

class HadithCardItem extends StatelessWidget {
  final HadithData hadithData;

  const HadithCardItem({super.key, required this.hadithData});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: ColorPallete.primaryColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Stack(
        // alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Assets.images.imgLeftCorner.image(
                      width: 92,
                      color: Colors.black,
                    ),
                    Assets.images.imgRightCorner.image(
                      width: 92,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Expanded(child: Assets.images.hadithCardBackgroundImg.image()),
              Assets.images.imgBottomDecoration.image(color: Colors.black),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Text(
                    hadithData.hadithTitle,
                    style: theme.textTheme.headlineSmall?.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    hadithData.hadithText,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
