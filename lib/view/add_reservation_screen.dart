import 'package:flite_klub/misc.dart';
import 'package:flite_klub/model/models.dart';
import 'package:flutter/material.dart';

class AddReservationPage extends Container {
  AddReservationPage({super.key});

  final Reservation _reservation = Reservation.example();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_reservation.aircraft.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('From'),
            Row(children: [
              TextButton(
                onPressed: () => {},
                child: const Text('Date 1'),
              ),
              TextButton(
                onPressed: () => {},
                child: const Text('Date 2'),
              ),
            ]),
            const Text('To'),
            const SizedBox(height: 10),
            Text(formatDateTime(_reservation.startTime)),
            const SizedBox(height: 10),
            Text(formatDateTime(_reservation.endTime)),
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
