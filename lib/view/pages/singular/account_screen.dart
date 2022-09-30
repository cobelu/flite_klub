import 'package:flite_klub/model/models.dart';
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
              onTap: () => {},
            ),
            ListTile(
              title: const Text("Manage Account"),
              onTap: () => {},
            ),
            ListTile(
              title: const Text("App Settings"),
              onTap: () => {},
            ),
          ],
        ),
      ],
    );
  }
}
