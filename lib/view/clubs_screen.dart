import 'package:flite_klub/view/club_screen.dart';
import 'package:flutter/material.dart';
import 'package:flite_klub/model/models.dart';
import 'package:flite_klub/view/contact_card.dart';
import 'package:flite_klub/view/transitions.dart';

class ClubsPage extends StatelessWidget {
  ClubsPage({super.key});

  final List<Club> entries = <Club>[
    Club.example(),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Club ${entries[index].toString()}'),
          onTap: () => {
            Navigator.of(context).push(createRoute(ClubPage())),
          },
        );
      },
    );
  }
}
