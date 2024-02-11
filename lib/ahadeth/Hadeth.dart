import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/ahadeth/item_Hadith_name.dart';

import '../Home/My_Theme.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadith> ahadithList = [];

  @override
  Widget build(BuildContext context) {
    if (ahadithList.isEmpty) {
      loadHadithFile();
    }
    return Column(
      children: [
        const Center(
            child: Image(image: AssetImage('assets/images/ahadeth_Logo.png'))),
        Divider(
          color: MyTheme.primaryLight,
          thickness: 3,
        ),
        Text(
          AppLocalizations.of(context)!.hadeth_name,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Divider(
          color: MyTheme.primaryLight,
          thickness: 3,
        ),
        ahadithList.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                color: MyTheme.primaryLight,
              ))
            : Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: MyTheme.primaryLight,
                      thickness: 1,
                    );
                  },
                  itemBuilder: (context, index) {
                    return ItemHadithName(hadith: ahadithList[index]);
                  },
                  itemCount: ahadithList.length,
                ),
              )
      ],
    );
  }

  void loadHadithFile() async {
    String hadithContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadithList = hadithContent.split('#\r\n');

    ///List have 50 hadith
    for (int i = 0; i < hadithList.length; i++) {
      List<String> hadithLines = hadithList[i].split('\n');
      String title = hadithLines[0];
      hadithLines.removeAt(0);
      Hadith hadith = Hadith(title: title, content: hadithLines);
      ahadithList.add(hadith);
      setState(() {});
    }
  }
}

class Hadith {
  String title;

  List<String> content;

  Hadith({required this.title, required this.content});
}

/// Data class
