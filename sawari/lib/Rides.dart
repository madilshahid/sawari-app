import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_firebase/main.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';

class Rides extends StatefulWidget {
  const Rides({Key? key}) : super(key: key);

  @override
  _RidesState createState() => _RidesState();
}

class _RidesState extends State<Rides> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bluecar.jpg"),
                  fit: BoxFit.cover

              ),
            ),
          ),
          Container(
          padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 110.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 30.0,
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.green,
                  shadowColor: Colors.greenAccent,
                  elevation: 7.0,
                  child: GestureDetector(
                    onTap: () {},
                    child: Center(
                      child: Text(
                        'Possible Rides',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              RaisedButton(
                onPressed: () async {
                  //Navigator.pop(context);
                  Navigator.pushNamed(context, 'ridedetails');
                },
                child: Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    //color: Colors.green,
                    shadowColor: Colors.greenAccent,
                    elevation: 7.0,
                    child: Center(
                      child: Text(
                        'Giki to Swat',
                        style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              RaisedButton(
                onPressed: () async {
                  //Navigator.pop(context);
                  //Navigator.pushNamed(context, 'ride');
                },
                child: Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    //color: Colors.green,
                    shadowColor: Colors.greenAccent,
                    elevation: 7.0,
                    child: Center(
                      child: Text(
                        'Giki to Islamabad',
                        style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              RaisedButton(
                onPressed: () async {
                  Navigator.pop(context);
                  //Navigator.pushNamed(context, 'ride');
                },
                child: Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    //color: Colors.green,
                    shadowColor: Colors.greenAccent,
                    elevation: 7.0,
                    child: Center(
                      child: Text(
                        'Back',
                        style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        ],
      ),
    );
  }
}
