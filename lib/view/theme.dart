import 'package:flutter/material.dart';

Color duskRed = const Color(0xFFBD2428);
Color dawnOrange = const Color(0xFFdb5527);
Color noonCitrus = const Color(0xFFFB961F);
Color middayGold = const Color(0xFFe9b971);
Color eveningGreen = const Color(0xFF29582b);
Color midnightIndigo = const Color(0xFF21274d);

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
      ),
    );
  }
}
