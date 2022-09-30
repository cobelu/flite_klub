import 'package:flite_klub/model/models.dart';
import 'package:flutter/material.dart';

import '../misc.dart';

class AircraftCard extends StatelessWidget {
  final Aircraft aircraft;

  const AircraftCard({
    super.key,
    required this.aircraft,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: const Image(
              image: NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
              ),
            ),
            title: Text(aircraft.name),
            subtitle: Text(formatAircraft(aircraft)),
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
