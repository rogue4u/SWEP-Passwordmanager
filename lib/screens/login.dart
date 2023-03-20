import 'dart:math';

import 'package:flutter/material.dart';
import 'vault.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<LoginPage> {
  final passwordController = TextEditingController();

  void _navigateTovault(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const VaultPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Password Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _navigateTovault(context);
                // TODO: Implement button action
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
