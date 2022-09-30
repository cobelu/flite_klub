import 'package:flutter/cupertino.dart';

enum Minutes {
  zero,
  fifteen,
  thirty,
  fortyFive,
}

int minutesToInt(Minutes minutes) {
  switch (minutes) {
    case Minutes.zero:
      return 0;
    case Minutes.fifteen:
      return 15;
    case Minutes.thirty:
      return 30;
    case Minutes.fortyFive:
      return 45;
    default:
      return -1;
  }
}
