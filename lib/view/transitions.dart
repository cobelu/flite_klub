import 'package:flutter/material.dart';

Route<dynamic> createRoute(Widget page) {
  return PageRouteBuilder<dynamic>(
    pageBuilder: (
      BuildContext context,
      Animation<dynamic> animation,
      Animation<dynamic> secondaryAnimation,
    ) =>
        page,
    transitionsBuilder: (
      BuildContext context,
      Animation<dynamic> animation,
      Animation<dynamic> secondaryAnimation,
      Widget child,
    ) {
      const Offset begin = Offset(0.0, 1.0);
      const Offset end = Offset.zero;
      const Curve curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
