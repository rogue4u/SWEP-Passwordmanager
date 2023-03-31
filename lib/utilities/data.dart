class PasswordData {
  final String id;
  final String title;
  final String username;
  final String password;
  final String email;
  final String link;
  final String notes;
  final String icon;
  final String tags;
  final String logs;

  PasswordData(this.id, this.title, this.username, this.password, this.email,
      this.link, this.notes, this.icon, this.tags, this.logs);

  factory PasswordData.fromJSON(Map<String, dynamic> json) {
    return PasswordData(
      json['id'],
      json["titel"],
      json["username"],
      json["password"],
      json["email"],
      json["link"],
      json["notes"],
      json["icon"],
      json["tags"],
      json["logs"],
    );
  }
}
