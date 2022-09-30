import 'package:flite_klub/model/models.dart';
import 'package:flutter/material.dart';
import 'package:flite_klub/view/pages/add_club_screen.dart';
import 'package:flite_klub/view/transitions.dart';

class ManageClubsPage extends StatelessWidget {
  const ManageClubsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Club club = Club.example();

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
