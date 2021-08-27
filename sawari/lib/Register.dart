import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_firebase/main.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  final GlobalKey<FormState> _forms = GlobalKey<FormState>();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  FirebaseAuth _auth=FirebaseAuth.instance;

  registeruser(String email, String password) async {
    if(_forms.currentState!.validate())
      {
        _forms.currentState!.save();
        try{
          UserCredential result=_auth.createUserWithEmailAndPassword(email: email, password: password) as UserCredential;
        User? user=result.user;
        return user;
        }catch(e){
          print(e.toString());
          print('Error..');
        }
      }

  }
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(),
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
                              controller: _emailcontroller,
                              onSaved: (value) {},
                              decoration: InputDecoration(
                                labelText: 'EMAIL',
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
                              controller: _passwordcontroller,
                              onSaved: (value) {},
                              decoration: InputDecoration(
                                labelText: 'Password',
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
                        registeruser(_emailcontroller.text, _passwordcontroller.text);
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
                    )
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
