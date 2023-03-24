import 'package:flutter/material.dart';
import 'package:passwordmanager/tab_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: TabBuilder(),
    );
  }
}
