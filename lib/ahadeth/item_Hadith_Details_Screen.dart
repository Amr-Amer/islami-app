import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemHadithDetailsScreen extends StatelessWidget {
  String content;

  ItemHadithDetailsScreen({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleSmall,
    );
  }
}
