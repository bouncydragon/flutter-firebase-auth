import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

import '../../constants.dart';

class FormSignUp extends StatefulWidget {
  const FormSignUp({Key? key}) : super(key: key);

  @override
  _FormSignUpState createState() => _FormSignUpState();
}

class _FormSignUpState extends State<FormSignUp> {
  bool _isEditingDone = false;
  bool _isEmailOk = false;

  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 40.0
                ),
                child: Column(
                children: [
                  // Email address
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      hintText: 'karla.lazatin@gmail.com',
                    ),
                    onChanged: (String value) {
                      setState(() {
                        _isEmailOk = EmailValidator.validate(value);
                      });
                    },
                    onEditingComplete: () {
                      setState(() {
                        _isEditingDone = true;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email address!';
                      }
                      if (!_isEmailOk && _isEditingDone) {
                        return 'Invalid email address';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10.0,),
                  // Password
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(hintText: '********'),
                    onChanged: (String value) {},
                    onEditingComplete: () {},
                    validator: (String? value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your password!';
                      }
                      if (value.length < 8) {
                        return 'Password is less than 8 characters';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(kPrimaryLightColor),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 105.0)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  side:
                                      BorderSide(color: kPrimaryLightColor)))),
                      onPressed: () {
                        // FirebaseAuth.instance.authStateChanges().listen((User? user) {
                        //   if (user == null) {
                        //     print('User is signed out');
                        //   } else {
                        //     print('User is signed in.');
                        //   }
                        // });
                        print(Text(emailController.text));
                        print(Text(passwordController.text));
                      },
                      child: Text(
                        'Sign Up',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600),
                      ))
                ],
              ),
              )
          )
        ],
      ),
    );
  }
}
