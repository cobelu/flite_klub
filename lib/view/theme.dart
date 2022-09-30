import 'package:flutter/material.dart';
import 'package:material_color_generator/material_color_generator.dart';

var duskRed = const Color(0xFFBD2428);
var dawnOrange = const Color(0xFFdb5527);
var noonCitrus = const Color(0xFFFB961F);
var middayGold = const Color(0xFFe9b971);
var eveningGreen = const Color(0xFF29582b);
var midnightIndigo = const Color(0xFF21274d);

class FliteKlubTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: generateMaterialColor(color: duskRed),
      bottomAppBarColor: generateMaterialColor(color: duskRed),
      scaffoldBackgroundColor: Colors.white,
      // fontFamily: 'Montserrat',
    );
  }
}
