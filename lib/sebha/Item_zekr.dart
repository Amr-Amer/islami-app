import 'package:flutter/material.dart';

import '../Home/My_Theme.dart';

class ItemZekr extends StatelessWidget {

  String text;

  ItemZekr({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.04),
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: MyTheme.primaryLight,
      ),
      child: Center(
        child: Text(text,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: MyTheme.whiteColor)),
      ),
    );
  }
}