import 'package:xml/xml.dart';

class Item {
  String _titel;
  String _username;
  String _password;
  String _email;
  String _link;
  String _notes;

  Item(this._titel, this._username, this._password, this._email, this._link,
      this._notes);


  factory 

  factory Item(Map<String, dynamic> json) {}
}
