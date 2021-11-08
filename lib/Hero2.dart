import 'package:flutter/material.dart';

class Hero2 extends StatelessWidget {
  const Hero2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.green,
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                child: Hero(
                  tag: "add",
                  child: Icon(
                    Icons.camera_alt_outlined,
                    size: 300,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
