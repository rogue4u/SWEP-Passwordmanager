import 'dart:io';
import 'dart:convert';
import 'package:file_picker/file_picker.dart';
import 'package:passwordmanager/utilities/data.dart';

class FileIO {
  String fileContent = '';

  void stringToObject() {
    Map<String, dynamic> userMap = jsonDecode(fileContent);
    var item = PasswordData.fromJson(userMap);
    print(fileContent);
    print('Howdy, ${item.title}!');
    print('We sent the verification link to ${item.email}.');
  }

  // reads the File based on the chooseFile path
  Future<String?> importFile() async {
    final filePath = await chooseFile();
    final file = File(filePath.toString());
    final contents = file.readAsStringSync();
    fileContent = contents;
    print(contents);
    return fileContent;
  }

  //File Picker - get the Filepath
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
}
