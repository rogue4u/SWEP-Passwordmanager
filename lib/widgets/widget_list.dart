import 'package:flutter/material.dart';
import 'package:passwordmanager/utilities/fileIO.dart';
import 'package:passwordmanager/widgets/widget_list_item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.65,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Scaffold(
            body: ListView.builder(
                itemCount: FileIO.passwordList.length,
                itemBuilder: (context, index) {
                  return const CustomListItem();
                }),
          ),
        ),
      ),
    );
  }
}
