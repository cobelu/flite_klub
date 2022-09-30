import 'package:flutter/material.dart';

import '../model/models.dart';
import 'cards/aircraft_card.dart';

class ClubAircraftPage extends StatelessWidget {
  ClubAircraftPage({super.key});

  final Club _club = Club.example();

  @override
  Widget build(BuildContext context) {
    final List<Aircraft> entries = _club.aircraft;
    return Scaffold(
      appBar: AppBar(
        title: Text(_club.name),
      ),
      body: Center(
          child: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return const AircraftCard();
        },
      )),
    );
  }
}
