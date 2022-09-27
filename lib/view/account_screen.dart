import 'package:flutter/material.dart';
import 'contact_card.dart';
import 'package:flite_klub/model/models.dart';

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
          children: const [
            Text('Something'),
            Text('Something else'),
            Text('Yet another thing'),
          ],
        ),
      ],
    );
  }
}