
import 'package:flutter/material.dart';

ThemeData light = ThemeData(
  primaryColor: Color(0xFF052077),

scaffoldBackgroundColor: Colors.white,
  brightness: Brightness.light,
accentColor:  Colors.pink,
  focusColor: Color(0xFFADC4C8),
  hintColor: Color(0xFF52575C),
  textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(
    primary: Colors.black, textStyle: TextStyle(color: Colors.black),
  )),
  buttonTheme: ButtonThemeData(buttonColor: Colors.red,)


);