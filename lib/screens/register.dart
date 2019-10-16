import 'package:flutter/material.dart';
import 'package:splash_screen/database/dbHelper.dart';
import 'package:splash_screen/models/UserModal.dart';
import 'package:sqflite/sqflite.dart';
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
      backgroundColor: Color.fromRGBO(16, 16, 200, 0.6),
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
                      color: Color.fromRGBO(16, 16, 160, 0.6),
                      child: Text(
                        'Signin',
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
                      color: Color.fromRGBO(16, 16, 160, 0.6),
                      child: Text(
                        'Sign Up',
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
           color: Color.fromRGBO(20, 20, 80, 0.8),
            child: TextField(
              controller: nameController,
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: 'Name'),
            ),
          ),
          Container(
           color: Color.fromRGBO(20, 20, 80, 0.8),
            margin: EdgeInsets.only(left: 16, right: 16, top: 16),
            width: double.infinity,
            child: TextField(
              controller: emailController,
              keyboardType: TextInputType.text,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: 'Email'),
            ),
          ),
          Container(
            color: Color.fromRGBO(20, 20, 80, 0.8),
            margin: EdgeInsets.only(left: 16, right: 16, top: 16),
            width: double.infinity,
            child: TextField(
              controller: passController,
              obscureText: true,
              keyboardType: TextInputType.text,
              style: TextStyle(color: Colors.white),
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
              buttonColor: Colors.grey,
              child: RaisedButton(
                child: Text('Continue'),
                onPressed: () {
                  var s1 = nameController.text;
                  var s2 = emailController.text;
                  var s3 = passController.text;

                  db.insert(new User(s1, s2, s3).toMap()).then((id) async {
                    if (id > 0) {
                      Toast.show("Data Inserted Successful", context,
                          duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
                    } else {
                      Toast.show("Insertion Failed", context,
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
