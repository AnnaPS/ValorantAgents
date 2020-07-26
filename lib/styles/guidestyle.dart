import 'package:flutter/material.dart';

class AppTheme {
  static const TextStyle display1 = TextStyle(
      fontFamily: 'Cabin',
      color: Colors.black,
      fontSize: 38,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.2);

  static const TextStyle display2 = TextStyle(
      fontFamily: 'Cabin',
      color: Colors.black,
      fontSize: 28,
      fontWeight: FontWeight.normal,
      letterSpacing: 1.1);

  static final TextStyle heading = TextStyle(
      fontFamily: 'Cabin',
      color: Colors.white.withOpacity(0.8),
      fontSize: 32,
      fontWeight: FontWeight.w900,
      letterSpacing: 1.2);

  static final TextStyle suHeading = TextStyle(
      fontFamily: 'Cabin',
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w100,
      letterSpacing: 1.2);
}
