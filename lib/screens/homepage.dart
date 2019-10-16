import 'package:flutter/material.dart';
import 'package:splash_screen/screens/message.dart';
import './register.dart';
import 'package:splash_screen/database/dbHelper.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'package:toast/toast.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final db = DatabaseConfig.instance;
  TextEditingController loginEmail = new TextEditingController();
  TextEditingController loginPassword = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 100),
            width: double.infinity,
            height: 50,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 100),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                      child: Text('Sign in'),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 24),
                    child: RaisedButton(
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                      child: Text('Sign Up'),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()),
                        );
                      },
                    ),
                  ),
                ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            width: double.infinity,
            height: 400,
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 24, left: 16, right: 16),
                  child: TextField(
                    controller: loginEmail,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Email'),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 24, left: 16, right: 16),
                  child: TextField(
                    controller: loginPassword,
                    
                    obscureText: true,
                    
                    decoration: InputDecoration(
                                             
                        border: OutlineInputBorder(), 
                                            hintText: 'Password'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 32),
                  child: Text('Forgot Your Password'),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(28)),
                  margin: EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: RaisedButton(
                    child: Text('Continue'),
                    textColor: Colors.white,
                    color: Colors.lightBlue,
                    onPressed: () {
                      validation();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future validation() async {
    String email = loginEmail.text;
    String password = loginPassword.text;

    var data = await db.queryAllRows();
    print(data);
    for (var d in data) {
      print(d["name"]);
      String s1 = d["email"];
      String s2 = d["pass"];
      if (email == s1 && password == s2) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Message()));
        Toast.show("Login Successful", context,
            duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
      } else {
        Toast.show("Login Failed", context,
            duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
      }
    }
  }
}
