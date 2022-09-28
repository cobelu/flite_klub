import 'package:flutter/material.dart';

AlertDialog showConfirmationDialog<T>(BuildContext context) {
  String thing = T.toString();
  return AlertDialog(
    title: Text('Remove $thing'),
    content: Text('Are you sure you want to remove this $thing?'),
    actions: <Widget>[
      TextButton(
        onPressed: () => Navigator.pop(context, 'No'),
        child: const Text('No'),
      ),
      TextButton(
        onPressed: () => Navigator.pop(context, 'Yes'),
        child: const Text('Yes'),
      ),
    ],
  );
}
