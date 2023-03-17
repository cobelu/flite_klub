import 'package:flutter/material.dart';

import '../../../model/models.dart';
import '../../transitions.dart';
import '../add_club_screen.dart';

class ManageClubsPage extends StatelessWidget {
  const ManageClubsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Club club = Club.example();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Clubs'),
      ),
      body: ListView(
        children: [
          Text(club.toString()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            {Navigator.of(context).push(createRoute(AddClubPage()))},
        child: const Icon(Icons.add),
      ),
    );
  }
}
