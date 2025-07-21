// import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:loginpage/homepage.dart';
import 'package:loginpage/signup.dart';
import 'component/textfield.dart';
import 'component/button.dart';
import 'signup.dart';

void main() {
  runApp( const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Homepage()
    );
  }
}
