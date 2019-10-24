import 'package:flutter/material.dart';
import 'package:splash_screen/database/dbHelper.dart';
import 'package:splash_screen/models/UserModal.dart';
import 'package:splash_screen/screens/message.dart';
// import 'package:sqflite/sqflite.dart';
import 'package:splash_screen/screens/homepage.dart';
import 'package:toast/toast.dart';

void main() {
  runApp(RegisterPage());
}

class RegisterPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<RegisterPage> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passController = new TextEditingController();
  final db = DatabaseConfig.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 60,
          ),
          Container(
            height: 100,
            margin: EdgeInsets.only(right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: ButtonTheme(
                    height: 40,
                    minWidth: 100,
                    child: RaisedButton(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      color: Colors.indigo[900],
                      child: Text(
                        'Sign In',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
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
                    minWidth: 120,
                    child: RaisedButton(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      color: Colors.grey[350],
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple[900]),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Message()));
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 24, right: 24),
            child: TextField(
              controller: nameController,
              style: TextStyle(color: Colors.grey),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  fillColor: Colors.deepPurple[800],
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  hintStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                  hintText: 'Name'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24, right: 24, top: 16),
            width: double.infinity,
            child: TextField(
              controller: emailController,
              keyboardType: TextInputType.text,
              style: TextStyle(color: Colors.grey),
              decoration: InputDecoration(
                  fillColor: Colors.deepPurple[800],
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  hintStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                  hintText: 'Email'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24, right: 24, top: 16),
            width: double.infinity,
            child: TextField(
              controller: passController,
              obscureText: true,
              keyboardType: TextInputType.text,
              style: TextStyle(color: Colors.grey),
              decoration: InputDecoration(
                  fillColor: Colors.deepPurple[800],
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  hintStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                  hintText: 'Password'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 56, left: 28, right: 28),
            child: ButtonTheme(
              minWidth: double.infinity,
              height: 50,
              buttonColor: Colors.grey[350],
              child: RaisedButton(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  'Continue',
                  style: TextStyle(fontSize: 20, color: Colors.deepPurple[900]),
                ),
                onPressed: () {
                  var s1 = nameController.text;
                  var s2 = emailController.text;
                  var s3 = passController.text;

                  db.insert(new User(s1, s2, s3).toMap()).then((id) async {
                    if (id > 0)
                     {
                      Toast.show("Data Inserted Successful", context,
                          duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
                    }
                    
                  });
                },
              ),
            ),
          )
          // ),
        ],
      ),
    );
  }
}
