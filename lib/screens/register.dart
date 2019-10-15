import 'package:flutter/material.dart';
import 'package:splash_screen/screens/homepage.dart';
//import 'package:sqflite/sqflite.dart';

void main() {
  runApp(RegisterPage());
}

class RegisterPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 100,
            margin: EdgeInsets.only(left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: ButtonTheme(
                    height: 40,
                    minWidth: 100,
                    child: RaisedButton(
                      child: Text('Signin',
                      style: TextStyle(color: Colors.white),
                      ),
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
                    height: 40,
                    minWidth: 100,
                    child: RaisedButton(
                      child: Text('Sign Up',
                      style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 16, right: 16),
            color: Colors.grey,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: 'Name'),
            ),
          ),
          Container(
            color: Colors.grey,
            margin: EdgeInsets.only(left: 16, right: 16, top: 16),
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: 'Email'),
            ),
          ),
          Container(
            color: Colors.grey,
            margin: EdgeInsets.only(left: 16, right: 16, top: 16),
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: 'Password'),
            ),
          ),
          // Container(
          //   width: double.infinity,
          //   height: 50,
          //   margin: EdgeInsets.only(left: 16, right: 16, top: 32),

          Container(
            margin: EdgeInsets.only(top: 24),
            child: ButtonTheme(
              minWidth: 348,
              height: 50,
              buttonColor: Colors.white,
              child: RaisedButton(
                child: Text('Continue'),
                onPressed: () {},
              ),
            ),
          )
          // ),
        ],
      ),
    );
  }
}
