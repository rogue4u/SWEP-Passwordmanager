import 'package:flutter/material.dart';
import 'package:passwordmanager/screens/login/mobile_login.dart';
import 'package:passwordmanager/screens/login/loginResponsiveManager.dart';
import 'package:passwordmanager/screens/login/tablet_login.dart';
import 'package:passwordmanager/screens/login/desktop_login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLoginLayout(
        mobileLogin: MobileLogin(),
        tabletLogin: TabletLogin(),
        desktopLogin: DesktopLogin(),
      ),
    );
  }
}
