// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        title: const Text('Title'),
        subtitle: const Text('Email'),
        onTap: () {
          //!TODO Copy Email
          print('Email copied');
        },
        leading: const Icon(Icons.person),
        trailing: IconButton(
          icon: const Icon(
            Icons.copy,
          ),
          onPressed: () {
            //!TODO Copy Password
            print('C');
          },
        ),
      ),
    );
  }
}
