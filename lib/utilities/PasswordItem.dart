import 'package:flutter/material.dart';

class PasswordItem {
  String _titel;
  String _username;
  String _password;
  String _email;
  String _link;
  String _notes;
  var _icon;
  String _tags;
  String _logs;

  PasswordItem(this._titel, this._username, this._password, this._email,
      this._link, this._notes, this._icon, this._tags, this._logs);

  factory PasswordItem.fromJSON(Map<String, dynamic> json) {
    return PasswordItem(
        json["titel"],
        json["username"],
        json["password"],
        json["email"],
        json["link"],
        json["notes"],
        json["icon"],
        json["tags"],
        json["logs"]);
  }

  // Getter Methods
  get title => _titel;
  get username => _username;
  get passowrd => _password;
  get email => _email;
  get link => _link;
  get notes => _notes;
  get icon => _icon;
  get tags => _tags;
  get logs => _logs;

  




}
