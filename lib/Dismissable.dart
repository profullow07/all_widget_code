import 'package:flutter/material.dart';

class DismissPage extends StatelessWidget {
  const DismissPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dismiss(),
    );
  }
}

class Dismiss extends StatefulWidget {
  const Dismiss({Key? key}) : super(key: key);

  @override
  _DismissState createState() => _DismissState();
}

class _DismissState extends State<Dismiss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Dismissible(
            key: Key("a"),
            background: Container(
              color: Colors.red,
            ),
            secondaryBackground: Container(
              color: Colors.green,
            ),
            child: ListTile(
              title: Text("Watch this video"),
              leading: Icon(Icons.watch),
            ),
          ),
          Dismissible(
            key: Key("a"),
            background: Container(
              color: Colors.red,
            ),
            secondaryBackground: Container(
              color: Colors.green,
            ),
            child: ListTile(
              title: Text("Watch this video"),
              leading: Icon(Icons.watch),
            ),
          ),
        ],
      ),
    );
  }
}
