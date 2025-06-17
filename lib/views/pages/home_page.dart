import 'package:flutter/material.dart';
import 'package:tuto_project/widgets/container_widget.dart';
import 'package:tuto_project/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            HeroWidget(title: 'Home Page'),
            ContainerWidget(),
          ],
        ),
      ),
    );
  }
}
