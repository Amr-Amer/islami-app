import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemSuraDetailsScreen extends StatelessWidget {
  String name;

  int index;

  ItemSuraDetailsScreen({super.key, required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$name {${index + 1}}',
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleSmall,
    );
  }
}
