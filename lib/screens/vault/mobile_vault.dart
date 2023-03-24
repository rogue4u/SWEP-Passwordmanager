import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MobileVaultPage extends StatefulWidget {
  const MobileVaultPage({super.key});

  @override
  State<MobileVaultPage> createState() => _MobileVaultPageState();
}

class _MobileVaultPageState extends State<MobileVaultPage> {
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
