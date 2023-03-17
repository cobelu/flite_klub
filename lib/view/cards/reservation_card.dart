import 'package:flutter/material.dart';

import '../../model/models.dart';
import '../add_reservation_screen.dart';
import '../transitions.dart';

class ReservationCard extends StatelessWidget {
  const ReservationCard({
    super.key,
    required this.reservation,
  });

  final Reservation reservation;

  @override
  Widget build(BuildContext context) {
    final String subtitle = '${reservation.startTime} - ${reservation.endTime}';
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: Text(reservation.aircraft.name),
            subtitle: Text(subtitle),
            onTap: () => Navigator.of(context)
                .push(createRoute(const AddReservationPage())),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const <Widget>[
              SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}
