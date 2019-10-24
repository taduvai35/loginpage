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
      backgroundColor: Colors.white,
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
                    margin: EdgeInsets.only(left: 60),
                    child: ButtonTheme(
                      minWidth: 100,
                      height: 35,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        child: Text(
                          'Sign in',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        color: Colors.deepPurple[900],
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 24),
                    child: ButtonTheme(
                      minWidth: 120,
                      buttonColor: Colors.white,
                      child: RaisedButton(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.deepPurple[900],
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()),
                          );
                        },
                      ),
                    ),
                  ),
                ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            width: double.infinity,
            height: 300,
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 70,
                  padding: EdgeInsets.only(left: 16, top: 16),
                  margin: EdgeInsets.only(top: 24, left: 8, right: 22),
                  child: TextField(
                    controller: loginEmail,
                    decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey[200], width: 5),
                          borderRadius:
                              BorderRadius.all(const Radius.circular(10)),
                        ),
                        hintStyle: TextStyle(
                            color: Colors.deepPurple[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                        hintText: 'Email'),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 70,
                  
                  padding: EdgeInsets.only(left: 16, top: 16),
                  margin: EdgeInsets.only(left: 8, right: 22),
                  child: TextField(
                    controller: loginPassword,
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,

                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey[200], width: 5),
                          borderRadius:
                              BorderRadius.all(const Radius.circular(10)),
                        ),
                        hintStyle: TextStyle(
                            color: Colors.deepPurple[900],
                            fontWeight: FontWeight.bold),
                        hintText: 'Password'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 32),
                  child: Text(
                    'Forgot Your Password ?',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  margin: EdgeInsets.only(top: 16, left: 24, right: 24),
                  child: RaisedButton(
                    elevation: 0,
                    child: Text(
                      'Continue',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    color: Colors.deepPurple[900],
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
