import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_c17_mon/core/gen/assets.gen.dart';
import 'package:islami_app_c17_mon/core/theme/color_pallete.dart';
import 'package:islami_app_c17_mon/models/sura_data.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routeName = "/quran_details";

  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    SuraData suraData = ModalRoute.of(context)!.settings.arguments as SuraData;

    if (verses.isEmpty) loadDataFromAssets(suraData.suraNumber);

    return Scaffold(
      appBar: AppBar(title: Text(suraData.suraNameEN)),
      body: Stack(
        children: [
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.symmetric(horizontal: 16.0),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Assets.images.imgLeftCorner.image(width: 90, height: 90),
          //           Assets.images.imgRightCorner.image(width: 90, height: 90),
          //         ],
          //       ),
          //     ),
          //     Assets.images.imgBottomDecoration.image(),
          //   ],
          // ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Assets.images.imgLeftCorner.image(width: 90, height: 90),
                    Text(
                      suraData.suraNameAR,
                      textAlign: TextAlign.center,

                      style: theme.textTheme.headlineSmall?.copyWith(
                        color: ColorPallete.primaryColor,
                      ),
                    ),
                    Assets.images.imgRightCorner.image(width: 90, height: 90),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  // physics: NeverScrollableScrollPhysics(),
                  itemCount: verses.length,
                  itemBuilder: (context, index) {
                    return Text(
                      "[${index + 1}] ${verses[index]}",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleLarge?.copyWith(
                        color: ColorPallete.primaryColor,
                      ),
                    );
                  },
                ),
              ),
              // Spacer(),
              Assets.images.imgBottomDecoration.image(),
            ],
          ),
        ],
      ),
    );
  }

  // Future<String>
  List<String> verses = [];

  Future<void> loadDataFromAssets(String suraNumber) async {
    String quranText = await rootBundle.loadString(
      "assets/files/quran/$suraNumber.txt",
    );

    setState(() {
      verses = quranText.split("\n");
    });

    print(quranText);
  }
}
