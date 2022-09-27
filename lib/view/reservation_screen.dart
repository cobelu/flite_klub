import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flite_klub/model/models.dart';
import 'package:flite_klub/misc.dart';

class ReservationPage extends Container {
  ReservationPage({super.key});

  final Reservation _reservation = Reservation.example();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_reservation.aircraft.name),
        backgroundColor: Colors.amber[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(formatAircraft(_reservation.aircraft)),
            Text(formatDateTime(_reservation.startTime)),
            Text(formatDateTime(_reservation.endTime)),
            TextButton(
              child: const Text("Edit"),
              onPressed: () => {log("Editing a Reservation...")},
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
              ),
              child: const Text("Delete"),
              onPressed: () => {log("Deleting a Reservation...")},
            ),
          ],
        ),
      ),
    );
  }
}
