import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:login_signup/sign_up.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;




class login extends StatefulWidget{
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  final _auth=FirebaseAuth.instance;
  late String _email;
  late String _password;
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: "Email"),
            onChanged: (value){
              _email=value;
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: "Passowrd"),
            onChanged: (value){
              _password=value;
            },
            obscureText: true,
          ),
          SizedBox(height: 10,),
          ElevatedButton.icon(
            onPressed: () async {
              try {
                final user = await _auth.signInWithEmailAndPassword(
                  email: _email,
                  password: _password,
                );
                Navigator.pushNamed(context, '/homepage');
              } catch (e) {
                print(e);
              }
            },
            icon: Icon(Icons.accessibility),
            label: Text("SignIn"),
          ),

          SizedBox(height: 10,),
          GestureDetector(
    onTap: () {
    // Perform the action when the text is clicked
    // For example, show a password recovery dialog or navigate to a password recovery screen
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => login()),
    );
    },
    child: Text(
    'Login',
    style: TextStyle(
    color: Colors.blue,
    decoration: TextDecoration.none,
    ),
    ),
    ),

        ],
      ),
    );
  }
}

