import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_firebase/Register.dart';
import 'package:test_firebase/main.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';

class Login_setup extends StatefulWidget {
  const Login_setup({Key? key}) : super(key: key);

  @override
  _Login_setupState createState() => _Login_setupState();
}

class _Login_setupState extends State<Login_setup> {
  @override
  final GlobalKey<FormState> _forms = GlobalKey<FormState>();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;

  loginuser(String email, String password) async {
    if (_forms.currentState!.validate()) {
      _forms.currentState!.save();
      try {
        UserCredential result = _auth.signInWithEmailAndPassword(
            email: email, password: password) as UserCredential;
        User? user = result.user;
        return user;
      } catch (e) {
        print(e.toString());
        print('Error..');
      }
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        // constraints: BoxConstraints.expand(),
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //         image: NetworkImage("https://www.google.com/imgres?imgurl=https%3A%2F%2Fstatic.vecteezy.com%2Fsystem%2Fresources%2Fpreviews%2F000%2F623%2F448%2Foriginal%2Fauto-car-logo-template-vector-icon.jpg&imgrefurl=https%3A%2F%2Fwww.vecteezy.com%2Fvector-art%2F623448-auto-car-logo-template-vector-icon&tbnid=8kvfpDhxcBpkhM&vet=12ahUKEwiUutaPuYHxAhVWgc4BHQYLA5kQMygbegUIARCGAg..i&docid=Uodyh1VNEVZlGM&w=5000&h=4000&q=a%20car%20logo&ved=2ahUKEwiUutaPuYHxAhVWgc4BHQYLA5kQMygbegUIARCGAg"),
        //         fit: BoxFit.cover)),
        // //child: TextField(decoration: InputDecoration(fillColor: Colors.amber,filled: true),
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/ds.png"), fit: BoxFit.cover),
              ),
            ),
            Container(
              //padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 110.0),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 200.0),
                child: Column(
                  children: <Widget>[
                    Form(
                        key: _forms,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                controller: _emailcontroller,
                                onSaved: (value) {},
                                decoration: InputDecoration(
                                  labelText: 'EMAIL',
                                  labelStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
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
                                  labelText: 'PASSWORD',
                                  labelStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                  ),
                                ),
                                obscureText: true,
                              )
                            ],
                          ),
                        )),
                    SizedBox(height: 10.0),
                    Container(
                      alignment: Alignment(1.0, 0.0),
                      child: InkWell(
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    // Container(
                    //   height: 40.0,
                    //   child: Material(
                    //     borderRadius: BorderRadius.circular(20.0),
                    //     color: Colors.green,
                    //     shadowColor: Colors.greenAccent,
                    //     elevation: 7.0,
                    //     child: GestureDetector(
                    //       onTap: () {},
                    //       child: Center(
                    //         child: Text(
                    //           'Login',
                    //           style: TextStyle(
                    //             color: Colors.white,
                    //             fontFamily: 'Montserrat',
                    //             fontWeight: FontWeight.bold,
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    RaisedButton(
                      onPressed: () async {
                        loginuser(
                            _emailcontroller.text, _passwordcontroller.text);

                        Navigator.pushNamed(context, 'hometab');
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
                              'Login',
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

                    SizedBox(
                      height: 30,
                      child: Center(
                          child: Text(
                        'Or',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      )),
                    ),
                    RaisedButton(
                      onPressed: () async {
                        Navigator.pushNamed(context, 'register');
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
            ),
          ],
        ),
      ),
    );
  }
}
