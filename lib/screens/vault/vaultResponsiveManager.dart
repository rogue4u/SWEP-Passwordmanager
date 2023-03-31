import 'package:flutter/material.dart';
import 'package:passwordmanager/screens/vault/desktop_vault.dart';

const mobileWidth = 435;
const tabletView = 1025;

class ResponsiveVaultLayout extends StatelessWidget {
  final Widget mobileVaultPage;
  final Widget tabletVaultPage;
  final Widget desktopVaultPage;

  const ResponsiveVaultLayout(
      {super.key,
      required this.mobileVaultPage,
      required this.tabletVaultPage,
      required this.desktopVaultPage});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobileVaultPage;
        } else if (constraints.maxWidth < tabletView) {
          return tabletVaultPage;
        } else {
          return desktopVaultPage;
        }
      },
    );
  }
}
