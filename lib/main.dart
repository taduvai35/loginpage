import 'package:flutter/material.dart';
import './screens/homepage.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(32, 32, 200, 0.8),
      body: Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'neon',
              style: TextStyle(
                fontFamily: 'Schyler-Regular',
                fontSize: 96, color: Colors.white),
            ),
             Text(
              'TRAVEL PARTNER',
              
              style: TextStyle(
                fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
