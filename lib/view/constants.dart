import 'dart:async';

import 'package:flutter/material.dart';

class Constants {
  final Color mainColor;
  final Color secondaryColor;

  const Constants({
    required this.mainColor,
    required this.secondaryColor,
  });

  factory Constants.constants() {
    return Constants(
      mainColor: Colors.amber[900]!,
      secondaryColor: Colors.amber[800]!,
    );
  }
}
