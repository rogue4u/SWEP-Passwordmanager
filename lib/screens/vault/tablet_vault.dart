import 'package:flutter/material.dart';

class TabletVaultPage extends StatefulWidget {
  const TabletVaultPage({super.key});

  @override
  State<TabletVaultPage> createState() => _TabletVaultPageState();
}

class _TabletVaultPageState extends State<TabletVaultPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('T A B L E T')),
            body: Text('Tablet')));
  }
}
