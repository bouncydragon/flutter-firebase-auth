import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_authentication/Screens/SignUp/form_signup.dart';
import 'package:flutter_firebase_authentication/Screens/Welcome/background.dart';
import 'package:flutter_firebase_authentication/constants.dart';

FirebaseAuth auth = FirebaseAuth.instance;

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Image.asset(
          //   'assets/leaf.png',
          //   scale: 3,
          // ),
          // SizedBox(height: 35),
          // const Text(
          //   'ORIGAMI',
          //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          // ),
          FormSignUp(),
          SizedBox(height: 55),
        ],
      ),
    );
  }
}
