import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tuto_project/data/constants.dart';
import 'package:tuto_project/data/notifiers.dart';
import 'package:tuto_project/views/pages/welcome_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final bool? themeMode = prefs.getBool(KConstants.themeModeKey);
  print('theme mode is $themeMode');
  print('previous notifier value  : ${isDarkModeNotifier.value}');
  isDarkModeNotifier.value = themeMode ?? false;
  print('final notifier value  : ${isDarkModeNotifier.value}');
  // await initThemeModel();
  runApp(const MyApp());
}

initThemeModel() async {}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
              brightness: isDarkModeNotifier.value
                  ? Brightness.dark
                  : Brightness.light,
            ),
          ),
          home: WelcomePage(),
        );
      },
    );
  }
}
