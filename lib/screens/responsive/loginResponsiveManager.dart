import 'package:flutter/material.dart';

const mobileMaxWidth = 435;
const tabletMaxView = 1025;

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
        if (constraints.maxWidth < mobileMaxWidth) {
          return mobileLogin;
        } else if (constraints.maxWidth < tabletMaxView) {
          return tabletLogin;
        } else {
          return desktopLogin;
        }
      },
    );
  }
}
