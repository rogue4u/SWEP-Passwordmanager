import 'package:flutter/material.dart';
import 'package:xml/xml.dart' as xml;

class FileIO {
  final lockBoxXML = '''<?ml version="1.0" encoding="UTF-8"?>
<data>
    <item>
        <titel>Facebook</titel>
        <username>suckerjerk</username>
        <password>sicher123</password>
        <email>suck@mark.na</email>
        <link>facebook.com</link>
        <notes>The King is Back</notes>
        <icon> </icon>
        <tags> </tags>
        <logs> </logs>
    </item>
    <item>
        <titel>Twitter</titel>
        <username>EloM nask</username>
        <password>TeslaIsBest</password>
        <email>ElonMusk@ElonMusk.elonmusk</email>
        <link>twitter.com/elonmusk</link>
        <notes>Elon Musk is best</notes>
        <icon> </icon>
        <tags> </tags>
        <logs> </logs>
    </item>
</data>''';

  void printXML() {
    final document = xml.XmlDocument.parse(lockBoxXML);
    print(document.toString());
  }
}
