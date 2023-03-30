import 'package:flutter/material.dart';

import 'package:passwordmanager/screens/vault/mobile_vault.dart';
import 'package:passwordmanager/screens/vault/tablet_vault.dart';
import 'package:passwordmanager/screens/vault/desktop_vault.dart';
import 'package:passwordmanager/screens/vault/vaultResponsiveManager.dart';

class VaultPage extends StatefulWidget {
  const VaultPage({super.key});

  @override
  State<VaultPage> createState() => _VaultPageState();
}

class _VaultPageState extends State<VaultPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveVaultLayout(
        mobileVaultPage: MobileVaultPage(),
        tabletVaultPage: TabletVaultPage(),
        desktopVaultPage: DesktopVaultPage(),
      ),
    );
  }
}
