import 'package:flutter/material.dart';

void main() {
  runApp(Message());
}

class Message extends StatelessWidget {
  int x = 20;
  int y = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(16,16, 200, 0.6),
      body: Container(
        child: Column(
          children: <Widget>[
          Padding(padding: EdgeInsets.only(top:48,left:400),),
            Icon(Icons.account_circle,size: 48,
            color: Colors.white,
            ),
            Padding(padding: EdgeInsets.only(top: 48),),
            Text(
              'Explore your Deals',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24,
              color: Colors.white,
              ),
              
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 40, right: 40, top: 16, bottom: 64),
                child: Card(
                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation:8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ButtonTheme(
                            height: 150,
                            minWidth: 150,
                            child: RaisedButton(
                              child: Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.flight,
                                    size: 96,
                                  ),
                                  Text('Flights'),
                                ],
                              ),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                          ),
                          ButtonTheme(
                            height: 150,
                            minWidth: 150,
                            child: RaisedButton(
                                child: Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.hotel,
                                    size: 96,
                                  ),
                                  Text('Hotels'),
                                ],
                              ),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ButtonTheme(
                            height: 150,
                            minWidth: 150,
                            child: RaisedButton(
                               child: Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.event,
                                    size: 96,
                                  ),
                                  Text('Holidays'),
                                ],
                              ),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                          ),
                          ButtonTheme(
                            height: 150,
                            minWidth: 150,
                            child: RaisedButton(
                              child: Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.directions_bus,
                                    size: 96,
                                  ),
                                  Text('Bus'),
                                ],
                              ),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ButtonTheme(
                            height: 150,
                            minWidth: 150,
                            child: RaisedButton(
                              child: Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.local_car_wash,
                                    size: 96,
                                  ),
                                  Text('cabs')
                                ],
                              ),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                          ),
                          ButtonTheme(
                            height: 150,
                            minWidth: 150,
                            child: RaisedButton(
                              child: Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.train,
                                    size: 96,
                                  ),
                                  Text('Train'),
                                ],
                              ),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
