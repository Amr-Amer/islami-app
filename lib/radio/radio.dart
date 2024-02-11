import 'package:flutter/material.dart';
import 'package:islami/Home/My_Theme.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: AssetImage('assets/images/radio_image.png')),
        Text(
          'اذاعه القران الكريم',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.skip_next,
                      color: MyTheme.primaryLight,
                      size: 50,
                    )),
              ),
              Expanded(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_arrow_sharp,
                      color: MyTheme.primaryLight,
                      size: 70,
                    )),
              ),
              Expanded(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.skip_previous,
                      color: MyTheme.primaryLight,
                      size: 50,
                    )),
              ),
            ],
          ),
        )
      ],
    );
  }
}
