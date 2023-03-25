import 'package:flutter/material.dart';

class DesktopVaultPage extends StatefulWidget {
  const DesktopVaultPage({super.key});

  @override
  State<DesktopVaultPage> createState() => _DesktopVaultPageState();
}

class _DesktopVaultPageState extends State<DesktopVaultPage> {
  var _tab = 3;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(appBar: AppBar(title: const Text('D E S K T O P'))));
  }
}
