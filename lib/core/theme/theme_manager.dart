import 'package:flutter/material.dart';

import 'color_pallete.dart';

abstract class ThemeManager {
  static ThemeData themeData = ThemeData(
    primaryColor: ColorPallete.primaryColor,
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontFamily: "Janna",
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: ColorPallete.generalTextColor,
      ),
      titleLarge: TextStyle(
        fontFamily: "Janna",
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: ColorPallete.generalTextColor,
      ),
      titleMedium: TextStyle(
        fontFamily: "Janna",
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: ColorPallete.generalTextColor,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Janna",
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: ColorPallete.generalTextColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFFE2BE7F),
      showUnselectedLabels: false,
      selectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(
        fontFamily: "Janna",
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}
