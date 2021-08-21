import 'package:flutter/material.dart';

class Test1 extends StatefulWidget {
  Test1({Key? key}) : super(key: key);

  @override
  _Test1State createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Appli"),
      ),
    );
  }
}
