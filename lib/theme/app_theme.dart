import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.black38,
      ),
    ),
  );

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
    ),
    cardTheme: CardThemeData(
      color: const Color.fromARGB(221, 97, 97, 97),
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}
