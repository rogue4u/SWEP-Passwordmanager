import 'package:flutter/material.dart';
import 'package:passwordmanager/widgets/Widget_navigation_bar.dart';
import '../../widgets/widget_list.dart';
import '../../widgets/widget_search_bar.dart';

class TabletVaultPage extends StatefulWidget {
  const TabletVaultPage({super.key});

  @override
  State<TabletVaultPage> createState() => _TabletVaultPageState();
}

class _TabletVaultPageState extends State<TabletVaultPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Lock Box"),
            actions: const [CustomSearchBar()],
          ),
          body: const Padding(
            padding: EdgeInsets.all(10.0),
            child: CustomListView(),
          ),
          bottomNavigationBar: CustomNavigationBar(),
        ));
  }
}
