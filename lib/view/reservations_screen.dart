import 'package:flite_klub/view/club_screen.dart';
import 'package:flutter/material.dart';
import 'package:flite_klub/model/models.dart';
import 'transitions.dart';
import 'reservation_screen.dart';

class ReservationsPage extends Container {
  ReservationsPage({super.key});

  final List<Aircraft> entries = <Aircraft>[
    Aircraft.example(),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Reservation ${entries[index].toString()}'),
          onTap: () =>
              Navigator.of(context).push(createRoute(ReservationPage())),
        );
      },
    );
  }
}