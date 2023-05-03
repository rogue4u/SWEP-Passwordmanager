import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PasswordData {
  int id;
  String title;
  String username;
  String password;
  String email;
  String link;
  String notes;
  IconData icon;
  List<String> tags;
  List<String> logs;

  PasswordData({
    required this.id,
    required this.title,
    required this.username,
    required this.password,
    required this.email,
    required this.link,
    required this.notes,
    required this.icon,
    required this.tags,
    required this.logs,
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
// Setter for the title attribute
  void setTitle(String value) {
    title = value;
  }

  // Setter for the username attribute
  void setUsername(String value) {
    username = value;
  }

  // Setter for the password attribute
  void setPassword(String value) {
    password = value;
  }

  // Setter for the email attribute
  void setEmail(String value) {
    email = value;
  }

  // Setter for the link attribute
  void setLink(String value) {
    link = value;
  }

  // Setter for the notes attribute
  void setNotes(String value) {
    notes = value;
  }

  // Setter for the icon attribute
  void setIcon(IconData value) {
    icon = value;
  }

  // Setter for the tags attribute
  void setTags(List<String> value) {
    tags = value;
  }

  // Setter for the logs attribute
  void setLogs(List<String> value) {
    logs = value;
  }
}

PasswordData password1 = PasswordData(
  id: 1,
  title: 'Google',
  username: 'example@gmail.com',
  password: 'password123',
  email: 'example@gmail.com',
  link: 'https://www.google.com/',
  notes: 'This is my Google account',
  icon: Icons.abc,
  tags: [
    'search',
    'email',
  ],
  logs: ['Last updated on 2023-04-30'],
);

PasswordData password2 = PasswordData(
  id: 2,
  title: 'Facebook',
  username: 'example@gmail.com',
  password: 'password456',
  email: 'example@gmail.com',
  link: 'https://www.facebook.com/',
  notes: 'This is my Facebook account',
  icon: Icons.facebook,
  tags: ['social media'],
  logs: ['Last updated on 2023-05-01'],
);

PasswordData password3 = PasswordData(
  id: 3,
  title: 'Twitter',
  username: 'example@gmail.com',
  password: 'password789',
  email: 'example@gmail.com',
  link: 'https://www.twitter.com/',
  notes: 'This is my Twitter account',
  icon: Icons.newspaper,
  tags: ['social media'],
  logs: ['Last updated on 2023-05-02'],
);

PasswordData password4 = PasswordData(
  id: 4,
  title: 'GitHub',
  username: 'example',
  password: 'password101',
  email: 'example@gmail.com',
  link: 'https://www.github.com/',
  notes: 'This is my GitHub account',
  icon: Icons.laptop,
  tags: ['code, version control'],
  logs: ['Last updated on 2023-04-28'],
);

PasswordData password5 = PasswordData(
  id: 5,
  title: 'Amazon',
  username: 'example@gmail.com',
  password: 'password202',
  email: 'example@gmail.com',
  link: 'https://www.amazon.com/',
  notes: 'This is my Amazon account',
  icon: Icons.shopping_cart,
  tags: ['shopping'],
  logs: ['Last updated on 2023-04-29'],
);

PasswordData password6 = PasswordData(
  id: 6,
  title: 'LinkedIn',
  username: 'example@gmail.com',
  password: 'password303',
  email: 'example@gmail.com',
  link: 'https://www.linkedin.com/',
  notes: 'This is my LinkedIn account',
  icon: Icons.work,
  tags: ['professional network'],
  logs: ['Last updated on 2023-04-27'],
);

PasswordData password7 = PasswordData(
  id: 7,
  title: 'Instagram',
  username: 'example@gmail.com',
  password: 'password404',
  email: 'example@gmail.com',
  link: 'https://www.instagram.com/',
  notes: 'This is my Instagram account',
  icon: Icons.photo_album,
  tags: ['social media'],
  logs: ['Last updated on 2023-05-02'],
);

PasswordData password8 = PasswordData(
  id: 1,
  title: 'Google',
  username: 'example@gmail.com',
  password: 'password123',
  email: 'example@gmail.com',
  link: 'https://www.google.com/',
  notes: 'This is my Google account',
  icon: Icons.abc,
  tags: [
    'search',
    'email',
  ],
  logs: ['Last updated on 2023-04-30'],
);

PasswordData password9 = PasswordData(
  id: 2,
  title: 'Facebook',
  username: 'example@gmail.com',
  password: 'password456',
  email: 'example@gmail.com',
  link: 'https://www.facebook.com/',
  notes: 'This is my Facebook account',
  icon: Icons.facebook,
  tags: ['social media'],
  logs: ['Last updated on 2023-05-01'],
);

PasswordData password10 = PasswordData(
  id: 3,
  title: 'Twitter',
  username: 'example@gmail.com',
  password: 'password789',
  email: 'example@gmail.com',
  link: 'https://www.twitter.com/',
  notes: 'This is my Twitter account',
  icon: Icons.newspaper,
  tags: ['social media'],
  logs: ['Last updated on 2023-05-02'],
);

PasswordData password11 = PasswordData(
  id: 4,
  title: 'GitHub',
  username: 'example',
  password: 'password101',
  email: 'example@gmail.com',
  link: 'https://www.github.com/',
  notes: 'This is my GitHub account',
  icon: Icons.laptop,
  tags: ['code, version control'],
  logs: ['Last updated on 2023-04-28'],
);

PasswordData password12 = PasswordData(
  id: 5,
  title: 'Amazon',
  username: 'example@gmail.com',
  password: 'password202',
  email: 'example@gmail.com',
  link: 'https://www.amazon.com/',
  notes: 'This is my Amazon account',
  icon: Icons.shopping_cart,
  tags: ['shopping'],
  logs: ['Last updated on 2023-04-29'],
);

PasswordData password13 = PasswordData(
  id: 6,
  title: 'LinkedIn',
  username: 'example@gmail.com',
  password: 'password303',
  email: 'example@gmail.com',
  link: 'https://www.linkedin.com/',
  notes: 'This is my LinkedIn account',
  icon: Icons.work,
  tags: ['professional network'],
  logs: ['Last updated on 2023-04-27'],
);

PasswordData password14 = PasswordData(
  id: 7,
  title: 'Instagram',
  username: 'example@gmail.com',
  password: 'password404',
  email: 'example@gmail.com',
  link: 'https://www.instagram.com/',
  notes: 'This is my Instagram account',
  icon: Icons.photo_album,
  tags: ['social media'],
  logs: ['Last updated on 2023-05-02'],
);

List<PasswordData> passwordList = [
  password1,
  password2,
  password3,
  password4,
  password4,
  password5,
  password6,
  password7,
  password8,
  password9,
  password10,
  password11,
  password12,
  password13,
  password14,
];
