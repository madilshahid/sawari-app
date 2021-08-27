import 'package:flutter/material.dart';
import 'package:test_firebase/screen/authenticate/sign_in.dart';

class authenticate extends StatefulWidget {
  const authenticate({Key? key}) : super(key: key);

  @override
  _authenticateState createState() => _authenticateState();
}

class _authenticateState extends State<authenticate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SignIn(),
    );
  }
}
