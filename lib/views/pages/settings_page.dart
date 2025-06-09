import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.title});
  final String title;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? dropDowItemValue = 'key1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: BackButton(onPressed: () => Navigator.pop(context)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Hi bro"),
                      duration: Duration(seconds: 5),
                      behavior: SnackBarBehavior.floating,
                      showCloseIcon: true,
                    ),
                  );
                },
                child: Text("Show SnackBar"),
              ),
              Divider(
                color: Colors.teal,
                thickness: 2,
                endIndent: 100,
                indent: 100,
              ),
              SizedBox(
                height: 100.0,
                child: VerticalDivider(color: Colors.pink, thickness: 5),
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text('Alert Content'),
                        title: Text('Alert title'),
                        actions: [
                          FilledButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Close'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text("Show Dialog"),
              ),
              DropdownButton(
                value: dropDowItemValue,
                items: [
                  DropdownMenuItem(value: 'key1', child: Text('Item 1')),
                  DropdownMenuItem(value: 'key2', child: Text('Item 2')),
                  DropdownMenuItem(value: 'key3', child: Text('Item 3')),
                ],
                onChanged: (String? value) {
                  setState(() {
                    dropDowItemValue = value;
                  });
                },
              ),
              TextField(
                controller: controller,
                decoration: InputDecoration(border: OutlineInputBorder()),
                onEditingComplete: () {
                  setState(() {});
                },
              ),
              Text(controller.text),
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
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
                autofocus: false,
              ),
              SwitchListTile(
                title: Text("Switch me"),
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              Slider(
                max: 100.0,
                divisions: 10,
                value: sliderValue,
                onChanged: (double value) {
                  setState(() {
                    sliderValue = value;
                    print(value);
                  });
                },
              ),
              InkWell(
                splashColor: Colors.amber,
                onTap: () {
                  print("Image clicked");
                },
                // child: Image.asset("assets/images/bg.jpg"),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.white12,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: Text("Click me"),
              ),

              OutlinedButton(onPressed: () {}, child: Text("Click me")),
              TextButton(onPressed: () {}, child: Text("Click me")),
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.amberAccent,
                  foregroundColor: Colors.black87,
                ),
                child: Text("Click me"),
              ),
              CloseButton(),
              BackButton(),
            ],
          ),
        ),
      ),
    );
  }
}
