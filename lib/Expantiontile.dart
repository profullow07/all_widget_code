import 'package:flutter/material.dart';

class Expantin_widget extends StatelessWidget {
  const Expantin_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Text(
            "Liquid_Widged",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          leadingWidth: 50,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        body: Column(
          children: [
            ExpansionTile(
              title: Text("home"),
              subtitle: Text("Bangladesh"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_drop_down),
              children: [
                Container(
                  height: 100,
                  color: Colors.blue,
                ),
              ],
            ),
            ExpansionTile(
              title: Text("Help"),
              subtitle: Text("Bangladesh"),
              leading: Icon(Icons.help_center),
              trailing: Icon(Icons.arrow_drop_down),
              children: [
                Container(
                  height: 100,
                  color: Colors.blue,
                ),
              ],
            ),
            ExpansionTile(
              title: Text("Search"),
              subtitle: Text("Bangladesh"),
              leading: Icon(Icons.search),
              trailing: Icon(Icons.arrow_drop_down),
              children: [
                Container(
                  height: 100,
                  color: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
