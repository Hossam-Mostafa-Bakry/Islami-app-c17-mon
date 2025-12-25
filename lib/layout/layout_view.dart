import 'package:flutter/material.dart';
import 'package:islami_app_c17_mon/core/gen/assets.gen.dart';
import 'package:islami_app_c17_mon/hadith/hadith_view.dart';
import 'package:islami_app_c17_mon/quran/quran_view.dart';
import 'package:islami_app_c17_mon/radio/radio_view.dart';
import 'package:islami_app_c17_mon/sebha/sebha_view.dart';
import 'package:islami_app_c17_mon/time/time_view.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}


/// Git & Github
///
/// 1- Un-versioned files || Untracked files
/// 2- versioned files || tracked files

class _LayoutViewState extends State<LayoutView> {
  int selectedIndex = 0;

  List<Widget> screens = [
    QuranView(),
    HadithView(),
    SebhaView(),
    RadioView(),
    TimeView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Assets.icons.quranInActiveIcn.svg(),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Assets.icons.quranActiveIcn.svg(),
            ),
            label: "Quran",
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.hadithInActiveIcn.svg(),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Assets.icons.hadithActiveIcn.svg(),
            ),
            label: "Hadith",
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.sebhaInActiveIcn.svg(),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Assets.icons.sebahaActiveIcn.svg(),
            ),
            label: "Sebha",
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.radioInActiveIcn.svg(),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Assets.icons.radioActiveCin.svg(),
            ),
            label: "Radio",
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.timeInActiveIcn.svg(),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Assets.icons.timeActiveIcn.svg(),
            ),
            label: "Time",
          ),
        ],
      ),
    );
  }
}
