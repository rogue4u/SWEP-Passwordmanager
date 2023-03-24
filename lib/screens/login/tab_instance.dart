import 'package:flutter/material.dart';
import 'package:passwordmanager/responsive/responsiveVaultPage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final passwordController = TextEditingController();

  void _navigateTovault(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => VaultPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
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
    );
  }
}
