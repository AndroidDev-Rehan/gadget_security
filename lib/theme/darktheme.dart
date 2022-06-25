
import 'package:flutter/material.dart';

ThemeData dark = ThemeData(
  primaryColor: Color(0xFF2D9008),
  scaffoldBackgroundColor: Color(0xFF052077),
  brightness: Brightness.dark,
  cardColor: Colors.white,
  focusColor: Color(0xFFADC4C8),
  hintColor: Color(0xFF52575C),
  textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(
    primary: Colors.black, textStyle: TextStyle(color: Colors.black),
  )),

    elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(primary: Colors.pink))
);