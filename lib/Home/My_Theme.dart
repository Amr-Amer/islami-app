import 'package:flutter/material.dart';

class MyTheme {
  ///colors + light mood + dark mood
  static Color blackColor = const Color(0xff242424);

  static Color primaryLight = const Color(0xffB7935F);

  static Color whiteColor = const Color(0xfffffffF);

  static ThemeData lightMode = ThemeData(
    primaryColor: primaryLight,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: blackColor, size: 30),
      backgroundColor: Colors.transparent,
      elevation: 0,
      toolbarHeight: 150,
      centerTitle: true,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
      titleSmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w300,
      ),
    ),
  );
}
