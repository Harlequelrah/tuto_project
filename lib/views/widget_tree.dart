import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tuto_project/data/constants.dart';
import 'package:tuto_project/data/notifiers.dart';
import 'package:tuto_project/views/pages/home_page.dart';
import 'package:tuto_project/views/pages/profile_page.dart';
import 'package:tuto_project/views/pages/settings_page.dart';

import '../widgets/navbar_widget.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Flutter App"),
        centerTitle: true,
        actions: [
          ValueListenableBuilder(
            valueListenable: isDarkModeNotifier,
            builder: (context, isDarkMode, child) {
              return IconButton(
                onPressed: () async {
                  print(
                    'theme mode before change is ${isDarkModeNotifier.value}',
                  );
                  isDarkModeNotifier.value = !isDarkModeNotifier.value;
                  final SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  await prefs.setBool(
                    KConstants.themeModeKey,
                    isDarkModeNotifier.value,
                  );
                  print(
                    'theme mode after change is ${isDarkModeNotifier.value}',
                  );
                },
                icon: isDarkMode
                    ? Icon(Icons.dark_mode)
                    : Icon(Icons.light_mode),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsPage(title: 'My Settings Page'),
                ),
              );
            },
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
