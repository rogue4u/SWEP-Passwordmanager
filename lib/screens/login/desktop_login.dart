import 'package:flutter/material.dart';
import 'package:passwordmanager/screens/vault/vaultPage.dart';
import 'package:passwordmanager/utilities/fileIO.dart';
import '../../widgets/widget_picker.dart';

class DesktopLogin extends StatefulWidget {
  const DesktopLogin({super.key});

  @override
  State<DesktopLogin> createState() => _DesktopLoginState();
}

class _DesktopLoginState extends State<DesktopLogin> {
  final passwordController = TextEditingController();

  //Leitet nach Input weiter zur nächsten Seite
  void _navigateTovault(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const VaultPage()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text('Desktop')),
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
                    FileIO file = FileIO();
                    file.importFile();
                  },
                  child: const Text('Login'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FPicker(),
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
