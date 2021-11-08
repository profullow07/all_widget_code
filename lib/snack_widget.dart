import 'package:flutter/material.dart';

class Snack_page extends StatelessWidget {
  const Snack_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Snackdesign(),
    );
  }
}

class Snackdesign extends StatefulWidget {
  const Snackdesign({Key? key}) : super(key: key);

  @override
  _SnackdesignState createState() => _SnackdesignState();
}

class _SnackdesignState extends State<Snackdesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Builder(
          builder: (BuildContext context) => ElevatedButton(
              onPressed: () {
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "First task success",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    duration: Duration(seconds: 10),
                    backgroundColor: Colors.red,
                    action: SnackBarAction(
                        label: "Ok", textColor: Colors.white, onPressed: () {}),
                  ),
                );
              },
              child: Text("SNACK BAR")),
        ),
      ),
    );
  }
}
