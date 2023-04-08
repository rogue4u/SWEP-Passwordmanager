import 'package:flutter/material.dart';
import 'package:passwordmanager/utilities/data.dart';
import 'package:passwordmanager/utilities/fileIO.dart';
import 'package:passwordmanager/widgets/widget_list_item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.99,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Scaffold(
            body: ListView.builder(
                itemCount: 25,
                itemBuilder: (context, index) {
                  return const CustomListItem();
                }),
          ),
        ),
      ),
    );
  }
}
