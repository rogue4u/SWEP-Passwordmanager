import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PasswordData {
  String? id;
  String? title;
  String? username;
  String? password;
  String? email;
  String? link;
  String? notes;
  String? icon;
  String? tags;
  String? logs;

  PasswordData({
    this.id,
    this.title,
    this.username,
    this.password,
    this.email,
    this.link,
    this.notes,
    this.icon,
    this.tags,
    this.logs,
  });

  factory PasswordData.fromJson(Map<String, dynamic> json) {
    return PasswordData(
      id: json['id'],
      title: json['title'],
      username: json['username'],
      password: json['password'],
      email: json['email'],
      link: json['link'],
      notes: json['notes'],
      icon: json['icon'],
      tags: json['tags'],
      logs: json['logs'],
    );
  }
}
