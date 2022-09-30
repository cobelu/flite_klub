import 'package:flutter/material.dart';

import '../../../model/models.dart';
import '../../cards/club_card.dart';

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
        return const ClubCard();
      },
    );
  }
}
