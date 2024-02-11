import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Home/HomeScreen.dart';
import 'package:islami/Home/My_Theme.dart';
import 'package:islami/provider/app_config_provider.dart';
import 'package:islami/quran/sura_detalis_screen.dart';
import 'package:provider/provider.dart';

import 'ahadeth/hadith_detalis_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppConfigProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadithDetailsScreen.routeName: (context) => HadithDetailsScreen(),
      },
      theme: MyTheme.lightMode,
      locale: Locale(provider.appLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
