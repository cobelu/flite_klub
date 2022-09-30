import 'package:flite_klub/model/models.dart';
import 'package:flutter/material.dart';

import '../singular/reservation_screen.dart';
import '../../transitions.dart';

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
        return ListTile(
          title: Text(entries[i].toString()),
          onTap: () =>
              Navigator.of(context).push(createRoute(ReservationPage())),
        );
      },
    );
  }
}
