class PasswordData {
  String? masterpassword;
  int? id;
  String? title;
  String? username;
  String? password;
  String? email;
  String? link;
  String? notes;
  String? icon;
  String? tags;
  String? logs;

  PasswordData(
      this.masterpassword,
      this.id,
      this.title,
      this.username,
      this.password,
      this.email,
      this.link,
      this.notes,
      this.icon,
      this.tags,
      this.logs);

  PasswordData.fromJson(Map<String, dynamic> json) {
    masterpassword = json['masterpassword'];
    id = json['id'];
    title = json['title'];
    username = json['username'];
    password = json['password'];
    email = json['email'];
    link = json['link'];
    notes = json['notes'];
    icon = json['icon'];
    tags = json['tags'];
    logs = json['logs'];
  }

  Map<String, dynamic> toJson() => {
        'masterpassword': masterpassword,
        'id': id,
        'title': title,
        'username': username,
        'password': password,
        'email': email,
        'link': link,
        'notes': notes,
        'icon': icon,
        'tags': tags,
        'logs': logs,
      };
}
