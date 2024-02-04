import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Home/My_Theme.dart';
import 'package:islami/quran/item_sura_Details_Screen.dart';

import 'item_sura_name.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'SuraDetailsScreen';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Stack(children: [
      Image.asset('assets/images/background.png'),
      Scaffold(
          appBar: AppBar(
            title: Text(
              args.SuraName,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          body: verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                  color: MyTheme.primaryLight,
                ))
              : Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.03,
                  ),
                  margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.09,
                    horizontal: MediaQuery.of(context).size.width * 0.06,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: MyTheme.whiteColor,
                  ),
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: MyTheme.primaryLight,
                        thickness: 2,
                      );
                    },
                    itemBuilder: (context, index) {
                      return ItemSuraDetailsScreen(
                        name: verses[index],
                        index: index,
                      );
                    },
                    itemCount: verses.length,
                  ),
                ))
    ]);
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    verses = lines;
    setState(() {});
  }
}

class SuraDetailsArgs {
  String SuraName;

  int index;

  SuraDetailsArgs({required this.SuraName, required this.index});
}

/// class Data
