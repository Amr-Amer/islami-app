import 'package:flutter/material.dart';
import 'package:islami/Home/HomeScreen.dart';
import 'package:islami/Home/My_Theme.dart';
import 'package:islami/ahadeth/Hadeth.dart';
import 'package:islami/quran/sura_detalis_screen.dart';

import 'ahadeth/hadith_detalis_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: HomeScreen.routeName,
        routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
          HadithDetailsScreen.routeName: (context) => HadithDetailsScreen(),
        },
        theme: MyTheme.lightMode);
  }
}
