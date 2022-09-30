import 'package:flutter/material.dart';

import '../../../model/models.dart';
import '../../cards/aircraft_card.dart';

class AircraftPage extends StatelessWidget {
  AircraftPage({super.key});

  final List<Aircraft> entries = <Aircraft>[
    Aircraft.example(),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return const AircraftCard();
      },
    );
  }
}
