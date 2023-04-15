import 'dart:io';
import 'package:flutter/material.dart';
import 'package:passwordmanager/utilities/fileIO.dart';

class FPicker extends StatelessWidget {
  FPicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final fileIO = FileIO();
        fileIO.importFile();
      },
      child: const Text('Open LockBox'),
    );
  }
}
