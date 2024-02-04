import 'package:flutter/material.dart';
import 'package:islami/Home/My_Theme.dart';
import 'package:islami/ahadeth/Hadeth.dart';
import 'package:islami/quran/quran.dart';
import 'package:islami/radio/radio.dart';
import 'package:islami/sebha/sebha.dart';

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
              'Islamy',
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
              items: const [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                    label: 'quran'),
                BottomNavigationBarItem(
                    icon:
                        ImageIcon(AssetImage('assets/images/ahadeth_icon.png')),
                    label: 'ahadeth'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                    label: 'sebha'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                    label: 'radio')
              ],
            ),
          ),
          body: tabs[selectIndex],
        )
      ],
    );
  }

  List<Widget> tabs = [QuranTab(), HadethTab(), SebhaTab(), RadioTab()];
}
