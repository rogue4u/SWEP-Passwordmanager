import 'package:passwordmanager/logic/data.dart';
import 'package:passwordmanager/widgets/widget_list.dart';
import 'package:flutter/services.dart';

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  var index;

  CustomListItem({
    this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        title: Text(passwordList[index].title),
        subtitle: Text(passwordList[index].email),
        onTap: () {
          //!TODO Open Edit Dialog
          print('Open Dialog');
        },
        leading: Icon(passwordList[index].icon),
        trailing: IconButton(
          icon: const Icon(
            Icons.copy,
          ),
          onPressed: () {
            Clipboard.setData(
                ClipboardData(text: passwordList[index].password));
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Copied to clipboard"),
            ));
            print('Copy Password');
          },
        ),
      ),
    );
  }
}
