import 'package:flutter/material.dart';
import 'package:tuto_project/data/constants.dart';
import 'package:tuto_project/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          HeroWidget(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My dress up darling',
                      style: KTextStyle.titleTealText,
                    ),
                    Text('How soft is it ?', style: KTextStyle.descriptionText),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
