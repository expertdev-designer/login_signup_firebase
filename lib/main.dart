import 'package:firebase_core/firebase_core.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';




import 'package:flutter/material.dart';
import 'package:login_signup/sign_up.dart';
import 'login.dart';
import 'homepage.dart';
void main(){
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: login(),
      routes: {
        '/signup':(_)=>signup(),
        '/homepage':(_)=> homepage()
      },
    );
  }

}


