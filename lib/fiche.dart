import 'package:flutter/material.dart';
import 'package:application/clsURL.dart';
class FicheUser extends StatefulWidget {
  //const FicheUser({ Key? key }) : super(key: key);

  @override
  _FicheUserState createState() => _FicheUserState();
}

class _FicheUserState extends State<FicheUser> {

TextEditingController txtnom=new TextEditingController();
TextEditingController txtpostnom=new TextEditingController();
TextEditingController txtpremon=new TextEditingController();
TextEditingController txtsexe=new TextEditingController();
TextEditingController txtadrese=new TextEditingController();
TextEditingController txtcontact=new TextEditingController();
TextEditingController txtmail=new TextEditingController();
TextEditingController txtusername=new TextEditingController();
TextEditingController txtpassword=new TextEditingController();

@override
  void initState() {
    txtnom.text=Pub.nom;
    txtpostnom.text=Pub.postnom;
     txtpremon.text=Pub.prenom;
      txtsexe.text=Pub.sexe;
    txtcontact.text=Pub.contact;
    txtmail.text=Pub.mail;
    txtusername.text=Pub.username;
    txtadrese.text=Pub.adresse;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FICHE USER"),
      ),
      body: Column(
        children: <Widget>[
          new TextField(
            controller: txtnom,
            enabled: false,
            decoration: InputDecoration(
              hintText: "Entrez votre nom",
              labelText: "Nom"
            ),            
          ),
          SizedBox(height: 10,),
          new TextField(
            controller: txtpostnom,
            enabled: false,
            decoration: InputDecoration(
              hintText: "Entrez votre Post-nom",
              labelText: "Post-nom"
            ),            
          ),
             SizedBox(height: 10,),
          new TextField(
            controller: txtpremon,
            enabled: false,
            decoration: InputDecoration(
              hintText: "Entrez votre Pre-nom",
              labelText: "Pre-nom"
            ),            
          ),
             SizedBox(height: 10,),
          new TextField(
            controller: txtsexe,
            enabled: false,
            decoration: InputDecoration(
              hintText: "Entrez votre Sexe",
              labelText: "Sexe"
            ),            
          ),
          SizedBox(height: 10,),
          new TextField(
            controller: txtadrese,
            enabled: false,
            decoration: InputDecoration(
              hintText: "Entrez votre Adresse",
              labelText: "Adresse"
            ),            
          ),
          SizedBox(height: 10,),new TextField(
            controller: txtcontact,
            enabled: false,
            decoration: InputDecoration(
              hintText: "Entrez votre Contact",
              labelText: "Contact"
            ),            
          ),
             SizedBox(height: 10,),
          new TextField(
            controller: txtusername,
            enabled: false,
            decoration: InputDecoration(
              hintText: "Entrez votre User name",
              labelText: "Username"
            ),            
          ),
          SizedBox(height: 10,),new TextField(
            controller: txtmail,
            enabled: false,
            decoration: InputDecoration(
              hintText: "Entrez votre E-mail",
              labelText: "E-mail"
            ),            
          ),
          SizedBox(height: 10,)
         

        ],
      ),
    );
  }
}