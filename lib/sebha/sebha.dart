import 'package:flutter/material.dart';
import 'package:islami/Home/My_Theme.dart';
import 'package:islami/sebha/Item_zekr.dart';
import 'package:islami/sebha/item_counter.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int count = 0;
  int index = 0;

  double turns = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Center(
        child: Image(image: AssetImage('assets/images/head_of_seb7a.png')),
      ),
      AnimatedRotation(
        turns: turns,
        duration: Duration(seconds: 1),
        child: Center(
            child: InkWell(
          onTap: () {
            setState(() {
              turns++;
              if (count == 33) {
                count = 0;
              }
              count++;
              textUpdate(index);
            });
          },
          child:
              const Image(image: AssetImage('assets/images/body_of_seb7a.png')),
        )),
      ),
      Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
        child: Text(
          'Number of Tasbeh',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      ItemCounter(counter: count),
      ItemZekr(index: index)
    ]);
  }

  void textUpdate(int index) {
    if (count == 0) {
      index++;
    }
  }
}
