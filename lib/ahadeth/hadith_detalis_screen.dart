import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Home/My_Theme.dart';
import 'package:islami/ahadeth/Hadeth.dart';
import 'package:islami/ahadeth/item_Hadith_Details_Screen.dart';
import 'package:islami/quran/item_sura_Details_Screen.dart';

import '../quran/item_sura_name.dart';

class HadithDetailsScreen extends StatefulWidget {
  static const String routeName = 'HadithDetailsScreen';

  @override
  State<HadithDetailsScreen> createState() => _HadithDetailsScreenState();
}

class _HadithDetailsScreenState extends State<HadithDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadith;

    return Stack(children: [
      Image.asset('assets/images/background.png'),
      Scaffold(
          appBar: AppBar(
            title: Text(
              args.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          body: Container(
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
                return ItemHadithDetailsScreen(content: args.content[index]);
              },
              itemCount: args.content.length,
            ),
          ))
    ]);
  }
}
