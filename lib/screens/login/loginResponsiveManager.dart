import 'package:flutter/material.dart';

const mobileWidth = 435;
const tabletView = 1025;

class ResponsiveLoginLayout extends StatelessWidget {
  final Widget mobileLogin;
  final Widget tabletLogin;
  final Widget desktopLogin;

  const ResponsiveLoginLayout(
      {super.key,
      required this.mobileLogin,
      required this.tabletLogin,
      required this.desktopLogin});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobileLogin;
        } else if (constraints.maxWidth < tabletView) {
          return tabletLogin;
        } else {
          return desktopLogin;
        }
      },
    );
  }
}
