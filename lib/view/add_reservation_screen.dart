import 'dart:developer';

import 'package:flite_klub/misc.dart';
import 'package:flite_klub/model/models.dart';
import 'package:flutter/material.dart';

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
            const SizedBox(height: 10),
            Text(formatDateTime(_reservation.startTime)),
            const SizedBox(height: 10),
            Text(formatDateTime(_reservation.endTime)),
            const SizedBox(height: 10),
            TextButton(
              child: const Text("Edit"),
              onPressed: () => {log("Editing a Reservation...")},
            ),
            const SizedBox(height: 10),
            const TextField( 
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Notes',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
