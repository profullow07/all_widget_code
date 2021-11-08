import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class Toast_page extends StatelessWidget {
  const Toast_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: toastdesign(),
    );
  }
}

class toastdesign extends StatefulWidget {
  const toastdesign({Key? key}) : super(key: key);

  @override
  _toastdesignState createState() => _toastdesignState();
}

class _toastdesignState extends State<toastdesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "First task completed",
                  textColor: Colors.red,
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                );
              },
              child: Text("First Task"),
            ),
            TextButton(
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "your are next page",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    backgroundColor: Colors.red);
              },
              child: Text(
                "Go Next",
                textScaleFactor: 2.5,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "your are home page",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    backgroundColor: Colors.red);
              },
              child: Icon(Icons.home),
            ),
          ],
        ),
      ),
    );
  }
}
