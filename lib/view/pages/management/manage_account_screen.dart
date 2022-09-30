import 'package:flutter/material.dart';

class ManageAccountPage extends StatelessWidget {
  const ManageAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Account'),
      ),
      body: ListView(
        children: [
          profileCard(
            Icons.inventory,
            'Export My Data',
            'Coming Soon',
            () => {},
          ),
          profileCard(
            Icons.delete_forever,
            'Delete My Account',
            'Coming Soon',
            () => {},
          ),
        ],
      ),
    );
  }
}

Card profileCard(
  IconData icon,
  String title,
  String subtitle,
  void Function()? onTap,
) {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          subtitle: Text(subtitle),
          onTap: onTap,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const <Widget>[
            SizedBox(width: 8),
          ],
        ),
      ],
    ),
  );
}
