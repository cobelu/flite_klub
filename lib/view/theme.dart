import 'package:flutter/material.dart';

var duskRed = const Color(0xFFBD2428);
var dawnOrange = const Color(0xFFdb5527);
var noonCitrus = const Color(0xFFFB961F);
var middayGold = const Color(0xFFe9b971);
var eveningGreen = const Color(0xFF29582b);
var midnightIndigo = const Color(0xFF21274d);

class FliteKlubTheme {
  static ThemeData get lightTheme {
    return ThemeData(
        // primaryColor: materialPrimary,
        // primarySwatch: materialPrimary,
        // bottomAppBarColor: duskRed,
        colorScheme: ColorScheme(
      primary: duskRed,
      secondary: dawnOrange,
      brightness: Brightness.light,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      background: Colors.white,
      onBackground: duskRed,
      surface: Colors.white,
      onSurface: Colors.black,
    )
        // fontFamily: 'Montserrat',
        );
  }
}
