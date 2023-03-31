import 'package:flutter/material.dart';
import 'package:passwordmanager/screens/vault/vaultPage.dart';

import '../../widgets/widget_picker.dart';

class MobileLogin extends StatefulWidget {
  const MobileLogin({super.key});

  @override
  State<MobileLogin> createState() => _MobileLoginState();
}

class _MobileLoginState extends State<MobileLogin> {
  final passwordController = TextEditingController();

  //Leitet nach Input weiter zur nächsten Seite
  void _navigateTovault(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => VaultPage()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text('M O B I L E')),
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
                    _navigateTovault(context);
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
