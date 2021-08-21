import 'package:flutter/material.dart';

class View extends StatefulWidget {
  View({Key? key}) : super(key: key);

  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bonjour : '),
      ),
    );
  }
}
