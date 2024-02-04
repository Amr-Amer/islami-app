import 'package:flutter/material.dart';
import 'package:islami/ahadeth/Hadeth.dart';
import 'package:islami/quran/sura_detalis_screen.dart';

import 'hadith_detalis_screen.dart';

class ItemHadithName extends StatelessWidget {
  Hadith hadith;

  ItemHadithName({super.key, required this.hadith});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadithDetailsScreen.routeName, arguments: hadith);
      },
      child: Text(
        textAlign: TextAlign.center,
        hadith.title,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}
