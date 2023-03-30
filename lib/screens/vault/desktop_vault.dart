import 'package:flutter/material.dart';
import 'package:passwordmanager/utilities/PasswordItem.dart';
import 'package:xml/xml.dart' as xml;
import 'package:passwordmanager/utilities/fileIO.dart';

class DesktopVaultPage extends StatefulWidget {
  const DesktopVaultPage({super.key});

  @override
  State<DesktopVaultPage> createState() => _DesktopVaultPageState();
}

class _DesktopVaultPageState extends State<DesktopVaultPage> {
  final FileIO fileIO = FileIO();

  Future<List<PasswordItem>> getPasswordItemFromXML(
      BuildContext context) async {
    String xmlString = await DefaultAssetBundle.of(context)
        .loadString("assets/data/example.xml");
    var raw = xml.XmlDocument.parse(xmlString);
    var element = raw.findAllElements("item");
    return element.map((elements) {
      return PasswordItem(
          elements.findElements("titel").first.text,
          elements.findElements("username").first.text,
          elements.findElements("password").first.text,
          elements.findElements("email").first.text,
          elements.findElements("link").first.text,
          elements.findElements("notes").first.text,
          elements.findElements("icon").first.text,
          elements.findElements("tags").first.text,
          elements.findElements("log").first.text);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Desktop'),
        ),
        body: ElevatedButton(
          onPressed: () {
            fileIO.printXML();
          },
          child: const Text('Get XMl'),
        ),
      ),
    );
  }
}
