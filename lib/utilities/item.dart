class PasswordItem {
  String _titel;
  String _username;
  String _password;
  String _email;
  String _link;
  String _notes;

  PasswordItem(this._titel, this._username, this._password, this._email,
      this._link, this._notes);

  factory PasswordItem.fromJSON(Map<String, dynamic> json) {
    return PasswordItem(json["titel"], json["username"], json["password"],
        json["email"], json["link"], json["notes"]);
  }

  // Getter Methods
  get title => _titel;
  get username => _username;
  get passowrd => _password;
  get email => _email;
  get link => _link;
  get notes => _notes;
}
