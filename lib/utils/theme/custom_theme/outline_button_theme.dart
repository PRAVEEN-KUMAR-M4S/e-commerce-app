import 'package:flutter/material.dart';

class EAppOutlineButtonTheme {
  EAppOutlineButtonTheme._();

  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.black,
          side: BorderSide(color: Colors.blue),
          textStyle: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))));

  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          side: BorderSide(color: Colors.blue),
          textStyle: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))));
}
