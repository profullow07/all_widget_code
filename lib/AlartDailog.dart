import 'package:flutter/material.dart';

class Alartpage extends StatelessWidget {
  const Alartpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Alartdesign(),
    );
  }
}

class Alartdesign extends StatefulWidget {
  const Alartdesign({Key? key}) : super(key: key);

  @override
  _AlartdesignState createState() => _AlartdesignState();
}

class _AlartdesignState extends State<Alartdesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Are you sure"),
                  content: Text(
                      "this page your press ok then you go next page,cancle"),
                  actions: [
                    RaisedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("OK"),
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Cancle"),
                    ),
                  ],
                );
              },
            );
          },
          child: Text("This is Harmfull"),
        ),
      ),
    );
  }
}
