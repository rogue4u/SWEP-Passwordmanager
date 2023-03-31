import 'dart:convert';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:passwordmanager/utilities/data.dart';

class FileIO {
  String fileName = "";
  String filePath = "";
  List<PasswordData> passwordList = [];

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/data/example.json');
    final data = await json.decode(response);

    passwordList = [...data['items'].map(PasswordData.fromJSON)];
  }

  //File Picker - get Json Filepath
  Future<void> openFile() async {
    FilePickerResult? resultFile = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['json'],
    );
    if (resultFile != null) {
      PlatformFile file = resultFile.files.first;
      setFileName(file);
      setFilePath(file);
      print(getFileName(fileName));
      print(getFilePath(filePath));
      print(passwordList);
    }
  }

  void setFileName(PlatformFile file) {
    fileName = file.name;
  }

  void setFilePath(PlatformFile file) {
    filePath = file.path!;
  }

  String getFileName(String fileName) {
    return fileName;
  }

  String getFilePath(String filePath) {
    return filePath;
  }
}
