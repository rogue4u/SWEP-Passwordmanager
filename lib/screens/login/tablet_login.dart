import 'package:flutter/material.dart';

class MyTabletLogin extends StatefulWidget {
  const MyTabletLogin({super.key});

  @override
  State<MyTabletLogin> createState() => _MyTabletLoginState();
}

class _MyTabletLoginState extends State<MyTabletLogin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(appBar: AppBar(title: const Text('Tablet View'))));
  }
}
