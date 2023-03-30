/* 
// Example Usage
Map<String, dynamic> map = jsonDecode(<myJSONString>);
var myRootNode = Root.fromJson(map);
*/ 
class Database {
    Groud? groud;

    Database({this.groud}); 

    Database.fromJson(Map<String, dynamic> json) {
        groud = json['Groud'] != null ? Groud?.fromJson(json['Groud']) : null;
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['Groud'] = groud!.toJson();
        return data;
    }
}

class DateDatum {
    String? id;
    String? timeStamp;
    String? changed;

    DateDatum({this.id, this.timeStamp, this.changed}); 

    DateDatum.fromJson(Map<String, dynamic> json) {
        id = json['Id'];
        timeStamp = json['TimeStamp'];
        changed = json['Changed'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['Id'] = id;
        data['TimeStamp'] = timeStamp;
        data['Changed'] = changed;
        return data;
    }
}

class Entry {
    String? id;
    String? checksum;
    String? username;
    String? password;
    String? icon;
    List<String?>? tags;
    String? info;

    Entry({this.id, this.checksum, this.username, this.password, this.icon, this.tags, this.info}); 

    Entry.fromJson(Map<String, dynamic> json) {
        id = json['Id'];
        checksum = json['Checksum'];
        username = json['Username'];
        password = json['Password'];
        icon = json['Icon'];
        if (json['Tags'] != null) {
         tags = <String>[];
         json['Tags'].forEach((v) {
         tags!.add(.fromJson(v));
        });
      }
        info = json['Info'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['Id'] = id;
        data['Checksum'] = checksum;
        data['Username'] = username;
        data['Password'] = password;
        data['Icon'] = icon;
        data['Tags'] =Tags != null ? tags!.map((v) => v?.toJson()).toList() : null;
        data['Info'] = info;
        return data;
    }
}

class Groud {
    String? name;
    List<Entry?>? entry;
    Groud? groud;

    Groud({this.name, this.entry, this.groud}); 

    Groud.fromJson(Map<String, dynamic> json) {
        name = json['Name'];
        if (json['Entry'] != null) {
         entry = <Entry>[];
         json['Entry'].forEach((v) {
         entry!.add(Entry.fromJson(v));
        });
      }
        groud = json['Groud'] != null ? Groud?.fromJson(json['Groud']) : null;
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['Name'] = name;
        data['Entry'] =Entry != null ? entry!.map((v) => v?.toJson()).toList() : null;
        data['Groud'] = groud!.toJson();
        return data;
    }
}

class History {
    String? id;
    String? type;
    String? old;
    String? New;

    History({this.id, this.type, this.old, this.New}); 

    History.fromJson(Map<String, dynamic> json) {
        id = json['Id'];
        type = json['Type'];
        old = json['Old'];
        New = json['New'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['Id'] = id;
        data['Type'] = type;
        data['Old'] = old;
        data['New'] = New;
        return data;
    }
}

class Meta {
    String? version;
    List<DateDatum?>? dateData;
    List<History?>? history;

    Meta({this.version, this.dateData, this.history}); 

    Meta.fromJson(Map<String, dynamic> json) {
        version = json['Version'];
        if (json['DateData'] != null) {
         dateData = <DateDatum>[];
         json['DateData'].forEach((v) {
         dateData!.add(DateDatum.fromJson(v));
        });
      }
        if (json['History'] != null) {
         history = <History>[];
         json['History'].forEach((v) {
         history!.add(History.fromJson(v));
        });
      }
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['Version'] = version;
        data['DateData'] = dateData != null ? dateData!.map((v) => v?.toJson()).toList() : null;
        data['History'] =History != null ? history!.map((v) => v?.toJson()).toList() : null;
        return data;
    }
}

class Root {
    Meta? meta;
    Database? database;

    Root({this.meta, this.database}); 

    Root.fromJson(Map<String, dynamic> json) {
        meta = json['Meta'] != null ? Meta?.fromJson(json['Meta']) : null;
        database = json['Database'] != null ? Database?.fromJson(json['Database']) : null;
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['Meta'] = meta!.toJson();
        data['Database'] = database!.toJson();
        return data;
    }
}

