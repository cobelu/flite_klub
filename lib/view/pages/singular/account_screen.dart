import 'package:flite_klub/model/models.dart';
import 'package:flite_klub/view/transitions.dart';
import 'package:flite_klub/view/pages/management/manage_clubs_screen.dart';
import 'package:flite_klub/view/pages/management/manage_account_screen.dart';
import 'package:flite_klub/view/pages/management/manage_settings_screen.dart';

import 'package:flutter/material.dart';

import '../../cards/contact_card.dart';

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
