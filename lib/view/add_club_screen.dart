import 'package:flutter/material.dart';

class AddClubPage extends StatelessWidget {
  AddClubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Club'),
        backgroundColor: Colors.amber[900],
      ),
    );
  }
}
