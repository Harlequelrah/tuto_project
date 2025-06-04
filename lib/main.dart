import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.tealAccent,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Harlequelrah App"), centerTitle: true),
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: () {
                print("Floating 1");
              },
              child: Icon(Icons.add),
            ),
            SizedBox(height: 20.0),
            FloatingActionButton(
              onPressed: () {
                print("Floating 2");
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "home"),
            NavigationDestination(icon: Icon(Icons.person), label: "profile"),
          ],
          selectedIndex: 0,
        ),
      ),
    );
  }
}
