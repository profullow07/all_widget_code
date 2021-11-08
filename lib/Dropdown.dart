import 'package:flutter/material.dart';

class DropDesign extends StatelessWidget {
  const DropDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DropPage(),
    );
  }
}

class DropPage extends StatefulWidget {
  const DropPage({Key? key}) : super(key: key);

  @override
  _DropPageState createState() => _DropPageState();
}

class _DropPageState extends State<DropPage> {
  var select = "Choise";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(select),
            DropdownButton(
              items: [
                DropdownMenuItem(
                  value: "One",
                  child: Text("One"),
                ),
                DropdownMenuItem(
                  value: "two",
                  child: Text("tow"),
                ),
                DropdownMenuItem(
                  value: "three",
                  child: Text("three"),
                ),
                DropdownMenuItem(
                  value: "four",
                  child: Text("four"),
                ),
              ],
              onChanged: (String? con) {
                setState(() {
                  select = con!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
