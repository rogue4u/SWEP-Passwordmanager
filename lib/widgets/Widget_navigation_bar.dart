import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.folder),
          label: 'Sort',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shield),
          label: 'Safety Check',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: 'New Entry',
        ),
      ],
      onTap: (value) {
        if (value == 1) {
          //!TODO Sortieren
        }
        if (value == 2) {
          //!TODO Safety Check
        }
        if (value == 3) {
          //!TODO New Entry
        }
      },
    );
  }
}
