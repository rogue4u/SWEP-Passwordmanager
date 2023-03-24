import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class DesktopVaultPage extends StatefulWidget {
  const DesktopVaultPage({super.key});

  @override
  State<DesktopVaultPage> createState() => _DesktopVaultPageState();
}

class _DesktopVaultPageState extends State<DesktopVaultPage> {
  final _tab = 6;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
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
    );
  }
}
