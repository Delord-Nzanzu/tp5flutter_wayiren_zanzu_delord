import 'dart:convert';

import 'package:application/adddata.dart';
import 'package:flutter/material.dart';
import 'package:application/clsURL.dart';
import 'package:http/http.dart' as http;
import 'package:application/fiche.dart';

class Login extends StatefulWidget {
  //Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

TextEditingController txtusername=new TextEditingController();
TextEditingController txtpassword=new TextEditingController();

Future<List> _login() async {
    final response = await http.post(Uri.parse( Pub.chemin + "login.php"),
        body: {
          "mail": txtusername.text, 
          "pass": txtpassword.text
          });
    var datauser = json.decode(response.body);
    if (datauser.length == 0) {
      
    } else {
      
      setState(() {
        Pub.nom=datauser[0]['nom'];
        Pub.postnom=datauser[0]['postnom'];
        Pub.adresse=datauser[0]['adresse'];
        Pub.contact=datauser[0]['contact'];
        Pub.mail=datauser[0]['mail'];
      });
     //_getPrix();
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FicheUser()));
    }
    return datauser;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN"),
      ),
      body: Column(
        children: <Widget>[
          new TextField(
            controller: txtusername,
            decoration: InputDecoration(
              hintText: "Username",
              labelText: "Username"
            ),            
          ),
          SizedBox(height: 10,),
          new TextField(
            controller: txtpassword,
            decoration: InputDecoration(
              hintText: "Password",
              labelText: "Password"
            ),            
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[              
          RaisedButton(
            onPressed:(){
              _login();
            },
            child: Text("Sign In"),
            color: Colors.orangeAccent,
            ),
            SizedBox(width:10),
             RaisedButton(
            onPressed:(){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AddData()));
            },
            child: Text("Sign Up"),
            color: Colors.orangeAccent,
            )
            
            ],
          )
        ],
      ),
    );
  }
}