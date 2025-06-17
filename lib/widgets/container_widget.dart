import 'package:flutter/material.dart';

import '../data/constants.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('My title', style: KTextStyle.titleTealText),
              Text('My description', style: KTextStyle.descriptionText),
            ],
          ),
        ),
      ),
    );
  }
}
