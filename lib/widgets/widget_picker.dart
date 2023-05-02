import 'dart:io';
import 'package:flutter/material.dart';
import 'package:passwordmanager/logic/fileIO.dart';

class FPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        FileIO fileIO = FileIO();
        fileIO.importFile();
      },
      child: const Text('Open LockBox'),
    );
  }
}
