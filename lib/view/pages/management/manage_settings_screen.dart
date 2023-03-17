import 'package:flutter/material.dart';

class ManageSettingsPage extends StatefulWidget {
  const ManageSettingsPage({super.key});

  @override
  State<ManageSettingsPage> createState() => _ManageSettingsPageState();
}

class _ManageSettingsPageState extends State<ManageSettingsPage> {
  bool darkMode = false;
  // TODO(cobelu): Dark mode
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Settings'),
      ),
      body: ListView(children: [
        Row(
          children: [
            const Text('Dark Mode'),
            Switch(
                value: darkMode,
                onChanged: (bool value) => setState(() {
                      darkMode = value;
                    }))
          ],
        )
      ]),
    );
  }
}
