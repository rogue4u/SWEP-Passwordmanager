import 'dart:io';
import 'package:file_picker/file_picker.dart';

class FileIO {
  var fileName = '';

  void importFile() async {
    final filePath = await chooseFile();
    final file = File(filePath.toString());
    final contents = file.readAsStringSync();
    print(contents);
  }

  //File Picker - get Json Filepath
  Future<String?> chooseFile() async {
    FilePickerResult? resultFile = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['json'],
    );
    if (resultFile != null) {
      PlatformFile file = resultFile.files.first;
      return file.path;
    } else {
      return null;
    }
  }

  void setFileName(PlatformFile file) {
    fileName = file.name;
  }

  String getFileName(String fileName) {
    return fileName;
  }

  String getFilePath(String filePath) {
    return filePath;
  }
}
