import 'package:flutter/material.dart';
import 'package:splash_screen/const/color_const.dart' as prefix0;
import './screens/homepage.dart';
import 'dart:async';
import 'const/color_const.dart';

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
      backgroundColor: Colors.indigo[900],
      // backgroundColor:Colors.blue[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Text(
              'neon',
              style: TextStyle(
                  fontFamily: 'AlfaSlabOne',
                  fontSize: 96,
                  color: Colors.white,
                  fontWeight: FontWeight.w100),
            ),
          ),
          SizedBox(

          ),
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              'TRAVEL PARTNER',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
