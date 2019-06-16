import 'package:flutter/material.dart';

class TibetanTheme {
  static final cobaltBlue = Color(0xFF0047AA);
  static final cobaltBlueLight = Color(0xFF5472DC);
  static final cobaltBlueDark = Color(0xFF00217A);
  static final gold = Color(0xFFFFD700);
  static final goldLight = Color(0xFFFFFF52);
  static final goldDark = Color(0xFFc7A600);

  static get theme {
    return ThemeData.light().copyWith(
        primaryColor: cobaltBlue,
        indicatorColor: gold,
        accentColor: gold,
        buttonColor: gold,
        textSelectionColor: gold,
        backgroundColor: Colors.white);
  }
}
