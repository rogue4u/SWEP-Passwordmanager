import 'package:flutter/material.dart';
import 'package:passwordmanager/widgets/widget_list_item.dart';
import 'package:passwordmanager/utilities/data.dart';
import 'package:passwordmanager/utilities/fileIO.dart';

class CustomListView extends StatefulWidget {
  const CustomListView({super.key});

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return const CustomListItem();
          }),
    );
  }
}
