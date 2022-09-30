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
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.inventory),
                  title: Text('Export My Data'),
                  subtitle: Text('Coming Soon'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const <Widget>[
                    SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.delete_forever),
                  title: Text('Delete My Account'),
                  subtitle: Text('Coming Soon'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const <Widget>[
                    SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
