import 'package:flutter/material.dart';
import 'package:tuto_project/data/notifiers.dart';
import 'package:tuto_project/views/pages/welcome_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          ListTile(
            title: Text("Logout"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    selectedPageNotifier.value = 0;
                    return WelcomePage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
