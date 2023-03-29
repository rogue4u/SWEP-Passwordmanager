import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:passwordmanager/utilities/item.dart';

class DesktopVaultPage extends StatefulWidget {
  const DesktopVaultPage({super.key});

  @override
  State<DesktopVaultPage> createState() => _DesktopVaultPageState();
}

class _DesktopVaultPageState extends State<DesktopVaultPage> {
  Future<List<PasswordItem>> getPasswordItemsFromXML(
      BuildContext context) async {
    String jsonString = await DefaultAssetBundle.of(context)
        .loadString("assets/data/example.json");
    List<dynamic> raw = jsonDecode(jsonString);
    return raw.map((f) => PasswordItem.fromJSON(f)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('D E S K T O P')),
            body: FutureBuilder(
              future: getPasswordItemsFromXML(context),
              builder: (context, data) {
                if (data.hasData) {
                  List<PasswordItem> passwordItem = data.data;

                  return ListView.builder(
                      itemCount: passwordItem.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            passwordItem[index].title,
                            style: const TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(passwordItem[index].passowrd),
                        );
                      });
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            )));
  }
}
