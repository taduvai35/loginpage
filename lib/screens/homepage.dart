import 'package:flutter/material.dart';
import './register.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                      child: Text('Sign in'),
                      color: Colors.lightBlue,
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
                      child: Text('Sign Up'),
                      color: Colors.lightBlue,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage())
                        
                        
                        ,
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
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Email'),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 24, left: 16, right: 16),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Password'),
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
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
