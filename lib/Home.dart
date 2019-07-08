import 'package:flutter/material.dart';
import 'firstPage.dart';
import 'secondPage.dart';
import 'thirdPage.dart';
import 'fourthPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Tabs App"),
        backgroundColor: Colors.teal,
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.home),
            ),
            new Tab(
              icon: new Icon(Icons.category),
            ),
            new Tab(
              icon: new Icon(Icons.cached),
            ),
            //new Tab(icon: new Icon(Icons.call_made),),
            new Tab(child: Text("Fourth")),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new FirstPage(),
          new SecondPage(),
          new ThirdPage(),
          new Fourth()
        ],
      ),
    );
  }
}
