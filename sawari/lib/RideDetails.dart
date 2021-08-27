import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_firebase/main.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';

class RideDetails extends StatefulWidget {
  const RideDetails({Key? key}) : super(key: key);

  @override
  _RideDetailsState createState() => _RideDetailsState();
}

class _RideDetailsState extends State<RideDetails> {
  @override
  FirebaseAuth _auth = FirebaseAuth.instance;
  Signout() async{
    _auth.signOut();
    Navigator.of(context).popUntil((route) => route.isFirst);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body:Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bluecar.jpg"),
                  fit: BoxFit.cover

              ),
            ),
          ),
          Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 110.0),
          child: Column(
            children: [
              Container(
               //padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 110.0),
                height: 150.0,
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.green,
                  shadowColor: Colors.greenAccent,
                  elevation: 7.0,
                  child: GestureDetector(
                    onTap: () {},
                    child: Center(
                      child: Text(
                        'Your Ride is Booked\n'
                            'Captain Name: Bacha Khan\n'
                                'Captain Contact No: 0312 3456789\n'
                            'Current Location: Giki\n'
                            'Destination: Swat\n'
                            'Thank you For Using Double Sawari App...',
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
              SizedBox(height: 10),
              RaisedButton(
                onPressed: () async {
                  Signout();

                },
                child: Container(
                 // padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 110.0),
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
