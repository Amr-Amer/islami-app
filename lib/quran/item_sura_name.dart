import 'package:flutter/material.dart';
import 'package:islami/quran/sura_detalis_screen.dart';

class ItemSuraName extends StatelessWidget {
  String name;

  int index;

  ItemSuraName({super.key, required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,
            arguments: SuraDetailsArgs(SuraName: name, index: index));
      },
      child: Text(
        textAlign: TextAlign.center,
        name,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}
