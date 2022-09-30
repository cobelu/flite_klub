import 'package:flutter/material.dart';

import '../../../model/models.dart';
import '../../cards/contact_card.dart';
import '../../transitions.dart';
import '../management/manage_account_screen.dart';
import '../management/manage_clubs_screen.dart';
import '../management/manage_settings_screen.dart';

class AccountPage extends Container {
  AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContactCard(
          user: User.example(),
        ),
        Column(
          children: [
            ListTile(
              title: const Text("Manage Clubs"),
              onTap: () => {
                Navigator.of(context).push(createRoute(const ManageClubsPage()))
              },
            ),
            ListTile(
              title: const Text("Manage Account"),
              onTap: () => {
                Navigator.of(context)
                    .push(createRoute(const ManageAccountPage()))
              },
            ),
            ListTile(
              title: const Text("App Settings"),
              onTap: () => {
                Navigator.of(context)
                    .push(createRoute(const ManageSettingsPage()))
              },
            ),
          ],
        ),
      ],
    );
  }
}
