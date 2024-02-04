import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Home/My_Theme.dart';

class ItemCounter extends StatelessWidget {
  int counter;

  ItemCounter({required this.counter});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.04),
      width: MediaQuery.of(context).size.width * 0.16,
      height: MediaQuery.of(context).size.height * 0.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: MyTheme.primaryLight,
      ),
      child: Center(
        child: Text(
          counter.toString(),
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
