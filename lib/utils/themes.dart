import 'package:flutter/material.dart';
import 'package:oneway/utils/colors.dart';

class Themes {
  static final light = ThemeData(
    scaffoldBackgroundColor: Colors.grey[600],
    appBarTheme: const AppBarTheme(
      elevation: 0,
      color: Colors.deepOrange,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: Colors.white,
      onPrimary: Colors.white,
      primaryContainer: Colors.white38,
      secondary: Colors.red,
    ),
  );

  static final dark = ThemeData(
    scaffoldBackgroundColor: kBackgroundColor,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      color: kBackgroundColor,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: Colors.white,
      onPrimary: Colors.white,
      primaryContainer: Colors.white38,
      secondary: Colors.red,
    ),
  );
}
