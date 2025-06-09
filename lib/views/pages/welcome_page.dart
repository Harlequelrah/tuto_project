import 'package:flutter/material.dart';
import 'package:tuto_project/widgets/hero_widget.dart';

import '../widget_tree.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HeroWidget(),
          SizedBox(height: 20),
          FilledButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WidgetTree();
                  },
                ),
              );
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
