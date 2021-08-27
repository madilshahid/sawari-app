import 'package:flutter/material.dart';
import 'package:test_firebase/Register_ride.dart';
import 'package:test_firebase/RideDetails.dart';
import 'package:test_firebase/main.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:test_firebase/screen/wrapper.dart';
import 'package:test_firebase/already.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:test_firebase/login_setup.dart';
import 'package:test_firebase/Register.dart';
import 'package:test_firebase/Homepage.dart';

import 'BookRide.dart';
import 'Rides.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  return runApp(MaterialApp(
 initialRoute:'home' ,
    routes:{
   'home':(context)=>Login_setup(),
      'register':(context)=>Register(),
      'hometab':(context)=>HomePage(),
      'registerride':(context)=>RegisterRide(),
      'bookride':(context)=>BookRide(),
      'ride':(context)=>Rides(),
      'ridedetails':(context)=>RideDetails(),
    },
    //home:Login_setup()),
  ));



  }


