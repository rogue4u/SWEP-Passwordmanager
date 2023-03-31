import 'package:flutter/material.dart';
import 'package:passwordmanager/utilities/fileIO.dart';

class FPicker extends StatelessWidget {
  FPicker({
    super.key,
  });
  FileIO fileIO = FileIO();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        fileIO.openFile();
        fileIO.readJson();
      },
      child: const Text('Open LockBox'),
    );
  }
}
