import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:application/clsURL.dart';
class AddData extends StatefulWidget {
  //AddData({Key? key}) : super(key: key);

  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {

TextEditingController txtnom=new TextEditingController();
TextEditingController txtpostnom=new TextEditingController();
TextEditingController txtpremon=new TextEditingController();
TextEditingController txtsexe=new TextEditingController();
TextEditingController txtadrese=new TextEditingController();
TextEditingController txtcontact=new TextEditingController();
TextEditingController txtmail=new TextEditingController();
TextEditingController txtusername=new TextEditingController();
TextEditingController txtpassword=new TextEditingController();
String sexe="";
List<DropdownMenuItem<String>> signeOperation = [
    DropdownMenuItem(
      value: "M",
      child: Text("M"),
    ),
    DropdownMenuItem(
      value: "F",
      child: Text("F"),
    ),
  ];
Future<void> Enregistrement() async
{
 String url=Pub.chemin+"adddata.php"; 
  var reponse=await http.post(Uri.parse(url),body:{
    "nom":txtnom.text,
    "postnom":txtpostnom.text,
    "prenom":txtpremon.text,
    "sexe":txtsexe.text,
    "adresse":txtadrese.text,
    "contact":txtcontact.text,
    "mail":txtmail.text,
    "username":txtusername.text,
    "pass":txtpassword.text
});
print(reponse);

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("enregistrement ressie"),
      ),
      body:SingleChildScrollView(child:  Column(
        children: <Widget>[
          new TextField(
            controller: txtnom,
            decoration: InputDecoration(
              hintText: "Entrez votre nom",
              labelText: "Nom"
            ),            
          ),
          SizedBox(height: 10,),
          new TextField(
            controller: txtpostnom,
            decoration: InputDecoration(
              hintText: "Entrez votre Post-nom",
              labelText: "Post-nom"
            ),            
          ),
           SizedBox(height: 10,),
          new TextField(
            controller: txtpremon,
            decoration: InputDecoration(
              hintText: "Entrez votre Prenom",
              labelText: "Prenom"
            ),            
          ),
          SizedBox(height: 10,),
          new TextField(
            controller: txtsexe,
            decoration: InputDecoration(
              hintText: "Entrez votre Sexe",
              labelText: "Sexe"
            ),            
          ),
          
          SizedBox(height: 10,),
          new TextField(
            controller: txtadrese,
            decoration: InputDecoration(
              hintText: "Entrez votre Adresse",
              labelText: "Adresse"
            ),            
          ),
          SizedBox(height: 10,),new TextField(
            controller: txtcontact,
            decoration: InputDecoration(
              hintText: "Entrez votre Contact",
              labelText: "Contact"
            ),            
          ),
          SizedBox(height: 10,),new TextField(
            controller: txtmail,
            decoration: InputDecoration(
              hintText: "Entrez votre E-mail",
              labelText: "E-mail"
            ),            
          ),
           SizedBox(height: 10,),
          new TextField(
            controller: txtusername,
            decoration: InputDecoration(
              hintText: "Entrez votre Logine",
              labelText: "username"
            ),            
          ),
          SizedBox(height: 10,),
          new TextField(
            controller: txtpassword,
            decoration: InputDecoration(
              hintText: "Entrez votre Password",
              labelText: "Password"
            ),            
          ),
          SizedBox(height: 10,),
          RaisedButton(
            onPressed:(){
              Enregistrement();
            },
            child: Text("Ajouter"),
            color: Colors.orangeAccent,
            )

        ],
      ),
      )
    );
  }
}