import 'package:flutter/material.dart';

class AppColors {
  static const MaterialColor maroon = MaterialColor(
    _maroonPrimaryValue,
    <int, Color>{
      50: Color(0xFFfafafa),
      100: Color(0xFFFFCDD2),
      200: Color(0xFFEF9A9A),
      300: Color(0xFFE57373),
      400: Color(0xFFEF5350),
      500: Color(0xFFF44336),
      600: Color(0xFFE53935),
      700: Color(0xFFD32F2F),
      800: Color(0xFFC62828),
      900: Color(_maroonPrimaryValue),
    },
  );

  static const int _maroonPrimaryValue = 0xFFB71C1C;

  static const MaterialColor black = MaterialColor(
    _blackPrimaryValue,
    <int, Color>{
      50: Color(0xFFfafafa),
      100: Color(0xFFf5f5f5),
      200: Color(0xFFeeeeee),
      300: Color(0xFFe0e0e0),
      400: Color(0xFFbdbdbd),
      500: Color(0xFF9e9e9e),
      600: Color(0xFF757575),
      700: Color(0xFF616161),
      800: Color(0xFF424242),
      900: Color(_blackPrimaryValue),
    },
  );

  static const int _blackPrimaryValue = 0xFF212121;

  static const MaterialColor green = MaterialColor(
    _greenPrimaryValue,
    <int, Color>{
      50: Color(0xFFfafafa),
      100: Color(0xFFb2ebf2),
      200: Color(0xFF80deea),
      300: Color(0xFF4dd0e1),
      400: Color(0xFF26c6da),
      500: Color(0xFF00bcd4),
      600: Color(0xFF00acc1),
      700: Color(0xFF0097a7),
      800: Color(0xFF00838f),
      900: Color(_greenPrimaryValue),
    },
  );

  static const int _greenPrimaryValue = 0xFF006064;
}