import 'package:flutter/material.dart';
import 'package:flite_klub/model/models.dart';
import 'dart:developer';

class ClubPage extends StatelessWidget {
  ClubPage({super.key});

  final _club = Club.example();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_club.name),
        backgroundColor: Colors.amber[900],
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
              onPressed: () => {log("Leaving club...")},
            ),
          ],
        ),
      ),
    );
  }
}