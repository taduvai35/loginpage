import 'package:flutter/material.dart';

void main() {
  runApp(Message());
}

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: Container(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 48, right: 56),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 300),
                  child: Icon(
                    Icons.account_box,
                    size: 48,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Explore Your Deals',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          letterSpacing: 1,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ],
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 24,
                    ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ButtonTheme(
                                height: 180,
                                minWidth: 150,
                                child: RaisedButton(
                                  child: Column(
                                    children: <Widget>[
                                      Icon(
                                        Icons.flight,
                                        size: 72,
                                      ),
                                      Text('Flights'),
                                    ],
                                  ),
                                  color: Colors.white,
                                  onPressed: () {},
                                ),
                              ),
                              ButtonTheme(
                                height: 180,
                                minWidth: 150,
                                child: RaisedButton(
                                  elevation: 0,
                                  child: Column(
                                    children: <Widget>[
                                      Icon(
                                        Icons.hotel,
                                        size: 72,
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
                                  elevation: 0,
                                  child: Column(
                                    children: <Widget>[
                                      Icon(
                                        Icons.event,
                                        size: 72,
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
                                  elevation: 0,
                                  child: Column(
                                    children: <Widget>[
                                      Icon(
                                        Icons.directions_bus,
                                        size: 72,
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
                                height: 180,
                                minWidth: 150,
                                child: RaisedButton(
                                  elevation: 0,
                                  child: Column(
                                    children: <Widget>[
                                      Icon(
                                        Icons.local_car_wash,
                                        size: 72,
                                      ),
                                      Text('cabs')
                                    ],
                                  ),
                                  color: Colors.white,
                                  onPressed: () {},
                                ),
                              ),
                              ButtonTheme(
                                height: 180,
                                minWidth: 150,
                                child: RaisedButton(
                                  child: Column(
                                    children: <Widget>[
                                      Icon(
                                        Icons.train,
                                        size: 72,
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
          ],
        ),
      ),
    );
  }
}
