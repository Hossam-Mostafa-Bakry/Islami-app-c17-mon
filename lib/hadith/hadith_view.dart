import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_c17_mon/hadith/widgeta/hadith_card_item.dart';
import 'package:islami_app_c17_mon/models/hadith_data.dart';

import '../core/gen/assets.gen.dart';

class HadithView extends StatefulWidget {
  const HadithView({super.key});

  @override
  State<HadithView> createState() => _HadithViewState();
}

class _HadithViewState extends State<HadithView> {
  @override
  Widget build(BuildContext context) {
    if (hadithList.isEmpty) _loadHadithFromAssets();
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.hadithBackgroundImg.provider(),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.images.headerLogoImg.image(
            width: MediaQuery.of(context).size.width * 0.8,
          ),
          CarouselSlider(
            items: hadithList.map((e) => HadithCardItem(hadithData: e),).toList(),
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.62,
              aspectRatio: 16 / 9,
              viewportFraction: 0.75,
              initialPage: 0,
              enableInfiniteScroll: false,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }

  List hadithList = [];

  Future<void> _loadHadithFromAssets() async {
    for (int i = 1; i <= 50; i++) {
      String hadithText = await rootBundle.loadString(
        "assets/files/hadith/h$i.txt",
      );
      print(hadithText);

      int titleLength = hadithText.trim().indexOf("\n");

      String hadithTitle = hadithText.substring(0, titleLength);
      String hadithBody = hadithText.substring(titleLength + 1);

      HadithData hadithData = HadithData(
        hadithTitle: hadithTitle,
        hadithText: hadithBody,
      );

      hadithList.add(hadithData);

      setState(() {});
    }
  }
}
