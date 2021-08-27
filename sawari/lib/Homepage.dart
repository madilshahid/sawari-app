import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_firebase/main.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override

  FirebaseAuth _auth = FirebaseAuth.instance;
  Signout() async{
    _auth.signOut();
    Navigator.of(context).popUntil((route) => route.isFirst);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Title(
          color: Colors.white,
          child: Center(child: Text('Double Sawari')),
        ),
      ),
      body: Stack(
        children: <Widget> [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bluecar.jpg"),
                  fit: BoxFit.cover

              ),
            ),
          ),
              //child: Image(image: AssetImage("assets/roadImage2.jfif"))),
        Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 110.0),
          child: Column(
            children: <Widget> [
              RaisedButton(
                onPressed: () async {
                  Navigator.pushNamed(context, 'registerride');

                },
                child: Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    //color: Colors.transparent,
                    shadowColor: Colors.greenAccent,
                    elevation: 7.0,
                    child: Center(
                      child: Text(
                        'Register a Ride',
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
              RaisedButton(
                onPressed: () async {
                  Navigator.pushNamed(context, 'bookride');

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
                        'Book a Ride',
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
              RaisedButton(
                onPressed: () async {
                  Signout();

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
                        'SIGN OUT',
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
            ],
          ),
        ),
  ],
      ),
    );

  }
}
