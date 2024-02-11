import 'package:flutter/material.dart';
import 'package:islami/sebha/Item_zekr.dart';
import 'package:islami/sebha/item_counter.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int count = 0;

  int index = 0;

  double angle = 0.0;
  List<String> textList = [
    "سبحان الله",
    "الحمد لله",
    "لا اله الا الله",
    "الله أكبر"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * .08),
            child: Transform.rotate(
              angle: angle,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    angle += 0.20;
                    if (count == 33) {
                      count = 0;
                      textList[index++];
                      if (index == 4) {
                        index = 0;
                      }
                    }
                    count++;
                  });
                },
                child: const Image(
                    image: AssetImage('assets/images/body_of_seb7a.png')),
              ),
            ),
          ),
          const Center(
            child: Image(image: AssetImage('assets/images/head_of_seb7a.png')),
          ),
        ],
      ),
      Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
        child: Text(
          'عدد التسبيحات',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      ItemCounter(counter: count),
      ItemZekr(
        text: textList[index],
      ),
    ]);
  }
}
