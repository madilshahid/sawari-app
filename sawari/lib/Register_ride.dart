import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:test_firebase/main.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';

class RegisterRide extends StatefulWidget {
  const RegisterRide({Key? key}) : super(key: key);

  @override
  _RegisterRideState createState() => _RegisterRideState();
}

class _RegisterRideState extends State<RegisterRide> {
  @override
  DatabaseReference _databasereference =
      FirebaseDatabase.instance.reference().child('DataBase');
  final GlobalKey<FormState> _forms = GlobalKey<FormState>();
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _currentlocationcontroller = TextEditingController();
  TextEditingController _destinationcontroller = TextEditingController();
  TextEditingController _c_no_controller = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,

      ),
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
        Padding(
          padding: EdgeInsets.fromLTRB(30.0, 70.0, 30.0, 0.0),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 110.0),
                child: Column(
                  children: <Widget>[
                    Form(
                        key: _forms,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: _namecontroller,
                              onSaved: (value) {},
                              decoration: InputDecoration(
                                labelText: 'NAME',
                                labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green),
                                ),
                              ),
                            ),
                            TextFormField(
                              controller: _c_no_controller,
                              onSaved: (value) {},
                              decoration: InputDecoration(
                                labelText: 'CONTACT NO',
                                labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green),
                                ),
                              ),
                            ),
                            TextFormField(
                              controller: _currentlocationcontroller,
                              onSaved: (value) {},
                              decoration: InputDecoration(
                                labelText: 'CURRENT LOCATION',
                                labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green),
                                ),
                              ),
                            ),
                            TextFormField(
                              controller: _destinationcontroller,
                              onSaved: (value) {},
                              decoration: InputDecoration(
                                labelText: 'DESTINATAION',
                                labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green),
                                ),
                              ),
                            )
                          ],
                        )),
                    SizedBox(height: 20),
                    RaisedButton(
                      onPressed: () async {
                        //registeruser(_emailcontroller.text, _passwordcontroller.text);
                        //Text('Ride Registered successfully');
                        Navigator.pop(context);
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
                              'Register',
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
        ),
  ],
      ),
    );
  }
}
