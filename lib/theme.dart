import 'dart:ui';

import 'package:flutter/material.dart';

var _duskRed = const Color(0xFFBD2428);
var _dawnOrange = const Color(0xFFdb5527);
var _noonCitrus = const Color(0xFFFB961F);
var _middayGold = const Color(0xFFe9b971);
var _eveningGreen = const Color(0xFF29582b);
var _midnightIndigo = const Color(0xFF21274d);

Map<int, Color> materialColorFrom(int r, int g, int b) {
  return {
    50: Color.fromRGBO(r, g, b, .1),
    100: Color.fromRGBO(r, g, b, .2),
    200: Color.fromRGBO(r, g, b, .3),
    300: Color.fromRGBO(r, g, b, .4),
    400: Color.fromRGBO(r, g, b, .5),
    500: Color.fromRGBO(r, g, b, .6),
    600: Color.fromRGBO(r, g, b, .7),
    700: Color.fromRGBO(r, g, b, .8),
    800: Color.fromRGBO(r, g, b, .9),
    900: Color.fromRGBO(r, g, b, 1),
  };
}
