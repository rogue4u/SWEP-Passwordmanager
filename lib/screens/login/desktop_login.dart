import 'package:flutter/material.dart';
import 'package:passwordmanager/screens/vault/desktop_vault.dart';

class MyDesktopLogin extends StatefulWidget {
  const MyDesktopLogin({super.key});

  @override
  State<MyDesktopLogin> createState() => _MyDesktopLoginState();
}

class _MyDesktopLoginState extends State<MyDesktopLogin> {
  final passwordController = TextEditingController();

  //Leitet nach Input weiter zur nächsten Seite
  void _navigateTovault(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const DesktopVaultPage()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text('Desktop View')),
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
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
