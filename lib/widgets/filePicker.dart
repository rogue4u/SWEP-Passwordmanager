import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class FPicker extends StatelessWidget {
  const FPicker({
    super.key,
  });

  Future<void> openFile() async {
    FilePickerResult? resultFile = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['json'],
    );
    if (resultFile != null) {
      PlatformFile file = resultFile.files.first;
      print(file.name);
      print(file.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        openFile();
        print("Open Lockbox");
      },
      child: const Text('Open LockBox'),
    );
  }
}
