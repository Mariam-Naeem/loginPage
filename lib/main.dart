import 'package:flutter/material.dart';
import 'package:login_app/screens/home_page.dart';
void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Homepage(),
    );
  }
}
