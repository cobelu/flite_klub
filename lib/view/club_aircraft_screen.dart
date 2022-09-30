import 'package:flutter/material.dart';

import '../model/models.dart';

class ClubAircraftPage extends StatelessWidget {
  ClubAircraftPage({super.key});

  final _club = Club.example();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_club.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
              ),
              child: const Text("Leave"),
              onPressed: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
