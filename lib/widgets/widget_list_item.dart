import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        title: Text('Item Title'),
        subtitle: Text('Sub Title'),
        onTap: () {
          print('A');
        },
        leading: Icon(Icons.person),
        trailing: IconButton(
          icon: const Icon(
            Icons.copy,
          ),
          onPressed: () {
            print('C');
          },
        ),
      ),
    );
  }
}
