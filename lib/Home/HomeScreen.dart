import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Home/My_Theme.dart';
import 'package:islami/ahadeth/Hadeth.dart';
import 'package:islami/quran/quran.dart';
import 'package:islami/radio/radio.dart';
import 'package:islami/sebha/sebha.dart';

import '../setting/setting.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/background.png'),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.app_title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(canvasColor: MyTheme.primaryLight),
            child: BottomNavigationBar(
              currentIndex: selectIndex,
              onTap: (index) {
                selectIndex = index;
                setState(() {});
              },
              selectedItemColor: Colors.black,
              showUnselectedLabels: true,
              items: [
                BottomNavigationBarItem(
                    icon: const ImageIcon(
                        AssetImage('assets/images/icon_quran.png')),
                    label: AppLocalizations.of(context)!.quraan),
                BottomNavigationBarItem(
                    icon: const ImageIcon(
                        AssetImage('assets/images/ahadeth_icon.png')),
                    label: AppLocalizations.of(context)!.hadeth),
                BottomNavigationBarItem(
                    icon: const ImageIcon(
                        AssetImage('assets/images/icon_sebha.png')),
                    label: AppLocalizations.of(context)!.sebha),
                BottomNavigationBarItem(
                    icon: const ImageIcon(
                        AssetImage('assets/images/icon_radio.png')),
                    label: AppLocalizations.of(context)!.radio),
                BottomNavigationBarItem(
                    icon: const Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.setting),
              ],
            ),
          ),
          body: tabs[selectIndex],
        )
      ],
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingTab()
  ];
}
