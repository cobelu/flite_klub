import 'package:flutter/material.dart';

import '../../../model/models.dart';
import '../../cards/reservation_card.dart';

class ReservationsPage extends Container {
  ReservationsPage({super.key});

  final List<Reservation> entries = <Reservation>[
    Reservation.example(),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int i) {
        return ReservationCard(reservation: entries[i]);
      },
    );
  }
}
