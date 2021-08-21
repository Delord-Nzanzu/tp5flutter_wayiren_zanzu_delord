import 'package:application/clspersonne.dart';
import 'package:flutter/material.dart';

class Identite extends StatefulWidget {
  Identite({Key? key}) : super(key: key);

  @override
  _IdentiteState createState() => _IdentiteState();
}

class _IdentiteState extends State<Identite> {
  TextEditingController nom = new TextEditingController();
  TextEditingController postnom = new TextEditingController();
  TextEditingController adresse = new TextEditingController();
  TextEditingController contact = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Identité"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: nom,
              decoration: InputDecoration(
                  hintText: "Saisir votre nom", labelText: "Nom"),
            ),
            TextField(
              controller: postnom,
              decoration: InputDecoration(
                  hintText: "Saisir votre postnom", labelText: "Postnom"),
            ),
            TextField(
              controller: adresse,
              decoration: InputDecoration(
                  hintText: "Saisir votre adresse", labelText: "Adresse"),
            ),
            TextField(
              controller: contact,
              decoration: InputDecoration(
                  hintText: "Saisir votre adresse", labelText: "Contact"),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        new Personne(
                            nom.text, postnom.text, adresse.text, contact.text);
                      });
                    },
                    child: Text("Enregistrer")),
                ElevatedButton(onPressed: () {}, child: Text("Modifier")),
                ElevatedButton(onPressed: () {}, child: Text("Supprimer"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
