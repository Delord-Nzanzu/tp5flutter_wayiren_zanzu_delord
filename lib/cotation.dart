import 'dart:ui';

import 'package:flutter/material.dart';

class Cotation extends StatelessWidget {
  const Cotation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cotation"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Text(
                  "Algébre :",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(width: 10),
                Container(
                  width: 240,
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "Algébre"),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "/60",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "Math :",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(width: 30),
                Container(
                  width: 240,
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "Math"),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "/45",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "Legisoc :",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(width: 10),
                Container(
                  width: 240,
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "Legisoc"),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "/75",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "Inform. :",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(width: 10),
                Container(
                  width: 240,
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "Nombre 1"),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "/30",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "Côte Totale :",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(width: 10),
                Container(
                  width: 190,
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "Nombre 1"),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "/210",
                  style: TextStyle(fontSize: 20),
                ),
              ],
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
            Card(
              child: Container(
                height: 100,
                width: 200,
                child: Center(
                  child: Text(
                    "%",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
