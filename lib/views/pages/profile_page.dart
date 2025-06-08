import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(border: OutlineInputBorder()),
            onEditingComplete: () {
              setState(() {});
            },
          ),
          Checkbox(
            value: isChecked,
            tristate: true,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value;
              });
            },
          ),
          CheckboxListTile(
            title: Text("Click me please"),
            value: isChecked,
            tristate: true,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value;
              });
            },
          ),
          Text(controller.text),
        ],
      ),
    );
  }
}
