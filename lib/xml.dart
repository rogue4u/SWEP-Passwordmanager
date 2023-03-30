import 'dart:math';

import 'package:xml/xml.dart';

void build_xml() {
  var b = XmlBuilder();
  b.processing('xml', 'version="1.0"');
  b.element('root', nest: () {
    b.element('meta', nest: () {
      b.attribute('name', "");
      b.element('icondata', nest: () {
        b.element('iconentry', nest: () {
          b.attribute('name', 'FolderSimple.ico');
          for(int i = 0; i < 10; i++) {
            b.element('ref', nest: () {
              b.attribute('id', i);
            });
          }
        });
      });
      b.element('datedata', nest: () {
        for(int i = 0; i < 7; i++) {
          b.element('ref', nest: () {
            b.attribute('id', i);
            b.attribute('TimeStamp', DateTime.now());
            b.attribute('changed', false);
          });
        }
      });
      b.element('history', nest: () {
        for(int i = 0; i < 25; i++) {
          b.element('historyitem', nest: () {
            b.attribute('id', i);
            b.attribute('type', "username");
            b.attribute('old', "abcd");
            b.attribute('new', "dcba");
          });
        }
      });
    });
    b.element('database', nest: () {
      b.element('group', nest: () {
        b.attribute('id', "1");
        b.attribute('name', "some group name");
        for(int i = 0; i < 5; i++) {
          b.element('entry', attributes: {
            "id": i.toString(),
            "checksum":"abcdefghijklmnopqrstuvwxyz",
            "username":"someusername",
            "password":"9whß3c8w9jc9w39dj"
          },nest: () {
            b.element('info',nest: () {
              b.text("info text.");
            });
          });
        }
      });
      b.element('group', nest: () {
        b.attribute('id', "2");
        b.attribute('name', "some other group name");
        for(int i = 0; i < 6; i++) {
          b.element('entry', attributes: {
            "id": i.toString(),
            "checksum":"abcdefghijklmnopqrstuvwxyz",
            "username":"someusername",
            "password":"9whß3c8w9jc9w39dj"
          },nest: () {
            b.element('info',nest: () {
              b.text("info text.");
            });
          });
        }
      });
    });
  });
  print(b.buildDocument());
}
