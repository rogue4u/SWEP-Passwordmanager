import 'package:flutter/material.dart';

class CustomListItem extends StatefulWidget {
  const CustomListItem({
    super.key,
  });

  @override
  State<CustomListItem> createState() => _ListItemState();
}

class _ListItemState extends State<CustomListItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        color: Colors.lightBlue,
      ),
    );
  }
}
