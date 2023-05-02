// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:passwordmanager/screens/vault/vaultPage.dart';
import 'package:passwordmanager/logic/fileIO.dart';
import '../../widgets/widget_picker.dart';

class TabletLogin extends StatefulWidget {
  const TabletLogin({super.key});

  @override
  State<TabletLogin> createState() => _TabletLoginState();
}

class _TabletLoginState extends State<TabletLogin> {

  final passwordController = TextEditingController();
  void _navigateTovault(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const VaultPage()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text('T A B L E T')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  child: TextField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    FileIO().stringToObject();
                    //!TODO Password abfrage
                    _navigateTovault(context);
                    print("login pressed!");
                  },
                  child: const Text('Login'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FPicker(), //FilePicker
                ),
                ElevatedButton(
                  onPressed: () {
                    print("LockBox Created");
                  },
                  child: const Text('New LockBox'),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
