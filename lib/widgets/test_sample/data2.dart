class Vault {
  Meta _meta;
  Database _database;

  Meta get meta => _meta;
  set meta(Meta value) => _meta = value;

  Database get database => _database;
  set database(Database value) => _database = value;

  Vault(this._meta, this._database);

  DateDataEntry getValueDateDataEntry() {
    // Implementierung
    throw ("NotImplemented");
  }

  HistoryEntry getValueHistoryEntry() {
    // Implementierung
    throw ("NotImplemented");
  }

  Meta getValueMeta() {
    // Implementierung
    throw ("NotImplemented");
  }

  Group getValueGroup() {
    // Implementierung
    throw ("NotImplemented");
  }

  Entry getValueEntry() {
    // Implementierung
    throw ("NotImplemented");
  }

  Database getValueDatabase() {
    // Implementierung
    throw ("NotImplemented");
  }

  void setValueDateDataEntry(DateDataEntry value) {
    // Implementierung
    throw ("NotImplemented");
  }

  void setValueHistoryEntry(HistoryEntry value) {
    // Implementierung
    throw ("NotImplemented");
  }

  void setValueMeta(Meta value) {
    // Implementierung
    throw ("NotImplemented");
  }

  void setValueGroup(Group value) {
    // Implementierung
    throw ("NotImplemented");
  }

  void setValueEntry(Entry value) {
    // Implementierung
    throw ("NotImplemented");
  }

  void setValueDatabase(Database value) {
    // Implementierung
  }
}

class Meta {
  String _version;
  List<DateDataEntry> _datedata;
  List<HistoryEntry> _history;

  String get version => _version;
  set version(String value) => _version = value;

  List<DateDataEntry> get datedata => _datedata;
  set datedata(List<DateDataEntry> value) => _datedata = value;

  List<HistoryEntry> get history => _history;
  set history(List<HistoryEntry> value) => _history = value;

  Meta(this._version, this._datedata, this._history);
}

class DateDataEntry {
  int _id;
  DateTime _timestamp;
  bool _changed;

  int get id => _id;
  set id(int value) => _id = value;

  DateTime get timestamp => _timestamp;
  set timestamp(DateTime value) => _timestamp = value;

  bool get changed => _changed;
  set changed(bool value) => _changed = value;

  DateDataEntry(this._id, this._timestamp, this._changed);
}

enum HistoryType {
  deleteEntry,
  editEntry,
  createEntry,
}

abstract class IHistoryElement {}

class DeleteEntry implements IHistoryElement {}

class EditEntry implements IHistoryElement {}

class CreateEntry implements IHistoryElement {}

class HistoryEntry {
  int _id;
  HistoryType _type;
  IHistoryElement _entry;

  int get id => _id;
  set id(int value) => _id = value;

  HistoryType get type => _type;
  set type(HistoryType value) => _type = value;

  IHistoryElement get entry => _entry;
  set entry(IHistoryElement value) => _entry = value;

  HistoryEntry(this._id, this._type, this._entry);
}

class Database {
  List<Group> _groups;
  List<Entry> _entries;

  List<Group> get groups => _groups;
  set groups(List<Group> value) => _groups = value;

  List<Entry> get entries => _entries;
  set entries(List<Entry> value) => _entries = value;
  Database(this._groups, this._entries);
}

class Group {
  String _name;
  List<Entry> _entries;
  List<Group> _subGroups;

  String get name => _name;
  set name(String value) => _name = value;

  List<Entry> get entries => _entries;
  set entries(List<Entry> value) => _entries = value;

  List<Group> get subGroups => _subGroups;
  set subGroups(List<Group> value) => _subGroups = value;

  Group(this._name, this._entries, this._subGroups);
}

class Entry {
  String _title;
  String _username;
  String _password;
  String _email;
  String _link;
  String _notes;
  String _icon;
  List<String> _tags;

  Entry(
    this._title,
    this._username,
    this._password,
    this._email,
    this._link,
    this._notes,
    this._icon,
    this._tags,
  );

  String get title => _title;
  String get username => _username;
  String get password => _password;
  String get email => _email;
  String get link => _link;
  String get notes => _notes;
  String get icon => _icon;
  List<String> get tags => _tags;

  set title(String value) => _title = value;
  set username(String value) => _username = value;
  set password(String value) => _password = value;
  set email(String value) => _email = value;
  set link(String value) => _link = value;
  set notes(String value) => _notes = value;
  set icon(String value) => _icon = value;
  set tags(List<String> value) => _tags = value;

  void passwordChecker() {
    // code to check if password is strong enough
  }

  Future<bool> haveIBeenPawned() async {
    // code to check if the password has been compromised in a data breach
    return true;
  }
}
