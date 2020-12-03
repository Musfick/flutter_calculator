import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HomePageState();

}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        child: Center(
          child: Text('Calculator App'),
        ),
      ),
    );
  }

}