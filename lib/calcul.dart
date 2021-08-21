import 'dart:ui';

import 'package:flutter/material.dart';

class Calcul extends StatefulWidget {
  Calcul({Key? key}) : super(key: key);

  @override
  _CalculState createState() => _CalculState();
}

class _CalculState extends State<Calcul> {
  List<String> signeListe = ['+', '-', 'x', '/'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calcul'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Container(
                  width: 170,
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "Nombre 1"),
                  ),
                ),
                SizedBox(width: 25),
                Container(
                  width: 170,
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "Nombre 2"),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black38),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(border: InputBorder.none),
                value: '+',
                hint: Text("Signe "),
                validator: (value) =>
                    value!.isEmpty ? 'Choisir un sifne.' : null,
                items: [
                  DropdownMenuItem(
                    child: Text('+'),
                    value: '+',
                  ),
                  DropdownMenuItem(
                    child: Text('-'),
                    value: '-',
                  ),
                  DropdownMenuItem(
                    child: Text('x'),
                    value: 'x',
                  ),
                  DropdownMenuItem(
                    child: Text('/'),
                    value: '/',
                  ),
                ],
                onChanged: (value) => {
                  setState(() {
                    //categorieValue = value.toString();
                  })
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Calculer",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: Container(
                height: 100,
                width: 200,
                child: Center(
                  child: Text(
                    "Resulat",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
