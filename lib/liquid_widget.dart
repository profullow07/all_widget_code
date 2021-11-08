import 'package:flutter/material.dart';
import 'package:herowidget/Hero2.dart';
import 'package:herowidget/hero_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class liquid_widget extends StatefulWidget {
  const liquid_widget({Key? key}) : super(key: key);

  @override
  State<liquid_widget> createState() => _liquid_widgetState();
}

class _liquid_widgetState extends State<liquid_widget> {
  

  @override
  Widget build(BuildContext context) {
    final Page = [
      Container(
        color: Colors.red,
      ),
      Hero2(),
      Container(
        color: Colors.blue,
      ),
      Hero_widget(),
      Container(
        color: Colors.green,
      ),
      Container(
        color: Colors.pink,
      ),
      
     
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Text("Liquid_Widged"),
          centerTitle: true,
          leading: Icon(Icons.menu),
          leadingWidth: 50,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        body: LiquidSwipe(pages: Page),
      ),
    );
  }
}
