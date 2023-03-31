import 'package:flutter/material.dart';
import 'package:passwordmanager/widgets/widget_list.dart';

import '../../widgets/widget_search_bar.dart';

class DesktopVaultPage extends StatefulWidget {
  const DesktopVaultPage({super.key});

  @override
  State<DesktopVaultPage> createState() => _DesktopVaultPageState();
}

class _DesktopVaultPageState extends State<DesktopVaultPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              actions: const [CustomSearchBar()],
            ),
            body: const Padding(
              padding: EdgeInsets.all(10.0),
              child: CustomListView(),
            )));
  }
}
