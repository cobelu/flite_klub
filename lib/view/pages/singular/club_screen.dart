import 'package:flutter/material.dart';

import '../../../model/models.dart';
import '../../popups/confirmation_dialog.dart';

class ClubPage extends StatelessWidget {
  ClubPage({super.key});

  final Club _club = Club.example();

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
              child: const Text('Leave'),
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) =>
                    showConfirmationDialog<Club>(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
