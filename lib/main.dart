import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'theme.dart'; // استدعاء ملف الثيم

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furniture App',
      debugShowCheckedModeBanner: false,
      theme: myTheme, // ← استخدام الثيم العام
      home: const HomePage(),
    );
  }
}
