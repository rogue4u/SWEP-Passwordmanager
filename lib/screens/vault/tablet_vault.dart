import 'package:flutter/material.dart';

class TabletVaultPage extends StatefulWidget {
  const TabletVaultPage({super.key});

  @override
  State<TabletVaultPage> createState() => _TabletVaultPageState();
}

class _TabletVaultPageState extends State<TabletVaultPage> {
  final _tab = 6;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text('T A B L E T')),
      body: DefaultTabController(
        length: _tab,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
