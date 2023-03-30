import 'package:dcdg/dcdg.dart';
import 'package:flutter/material.dart';
import 'package:passwordmanager/screens/login/loginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}
