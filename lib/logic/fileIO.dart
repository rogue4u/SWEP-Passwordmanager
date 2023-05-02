import 'dart:io';
import 'dart:convert';
import 'package:file_picker/file_picker.dart';
import 'package:passwordmanager/logic/data.dart';

class FileIO {
  String jsonString = '';

  void stringToObject() {
    // Convert JSON string to a Map
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    // Access the "passwordData" list
    List<dynamic> passwordDataList = jsonMap['passwordData'];
    // Loop through the list and create PasswordData objects
    List<PasswordData> passwordDataObjects = [];
    for (var passwordDataJson in passwordDataList) {
      passwordDataObjects.add(PasswordData.fromJson(passwordDataJson));
    }
  }

  // reads the File based on the chooseFile path
  Future<void> importFile() async {
    final filePath = await chooseFile();
    final file = File(filePath.toString());
    jsonString = file.readAsStringSync();
    print(jsonString);
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
