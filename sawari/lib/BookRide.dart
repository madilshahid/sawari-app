import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_firebase/main.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';

class BookRide extends StatefulWidget {
  const BookRide({Key? key}) : super(key: key);

  @override
  _BookRideState createState() => _BookRideState();
}

class _BookRideState extends State<BookRide> {
  @override
  final GlobalKey<FormState> _forms = GlobalKey<FormState>();
  TextEditingController _customercurrentlocationcontroller =
      TextEditingController();
  TextEditingController _customerdestinationcontroller =
      TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blueGrey[800],
      body: Stack(
        children: <Widget>[
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
                Form(
                    key: _forms,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _customercurrentlocationcontroller,
                          onSaved: (value) {},
                          decoration: InputDecoration(
                            labelText: 'CURRENT LOCATION',
                            labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[300],
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          ),
                        ),
                        TextFormField(
                          controller: _customerdestinationcontroller,
                          onSaved: (value) {},
                          decoration: InputDecoration(
                            labelText: 'DESTINATION',
                            labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[300],
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          ),
                        )
                      ],
                    )),
                RaisedButton(
                  onPressed: () async {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, 'ride');
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
                          'DONE',
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
