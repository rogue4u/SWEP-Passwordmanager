import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

var _passwordIsObscured = true;

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              //Eingabefeld
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter the Masterpassword';
                }
                return null;
              },
              obscureText: _passwordIsObscured, // Sichtbarkeit
              maxLines: 1, // Maximale Zeilen
            ),
            ElevatedButton(
              //Masterpasswort bestätigen Button
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Great!')),
                  );
                }
              },
              child: const Text('Unlock'),
            )
          ],
        ),
      ),
    ));
  }
}
