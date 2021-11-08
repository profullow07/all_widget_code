import 'package:flutter/material.dart';
import 'package:herowidget/Hero2.dart';

class Hero_widget extends StatelessWidget {
  const Hero_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Hero_page(),
    );
  }
}

class Hero_page extends StatefulWidget {
  const Hero_page({Key? key}) : super(key: key);

  @override
  _Hero_pageState createState() => _Hero_pageState();
}

class _Hero_pageState extends State<Hero_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.red,
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              CircleAvatar(
                child: GestureDetector(
                  child: Hero(
                    tag: "add",
                    child: Icon(
                      Icons.add_shopping_cart,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back))
            ],
          ),
        ),
      ),
    );
  }
}
