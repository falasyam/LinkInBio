import 'package:flutter/material.dart';

darkTheme(context){
  return ThemeData(
    primarySwatch: Colors.red,
    primaryColor: Colors.black,
    accentColor: Colors.redAccent,
    disabledColor: Colors.grey,
    cardColor: Colors.black,
    backgroundColor: Color(0xFF121211),
    brightness: Brightness.dark,
    accentIconTheme: IconThemeData(color: Colors.black),
    dividerColor: Colors.black54,
  );
}

lightTheme(context){
  return ThemeData(
    primarySwatch: Colors.red,
    primaryColor: Colors.white,
    accentColor: Colors.redAccent,
    disabledColor: Colors.grey,
    cardColor: Colors.white,
    backgroundColor: Color(0xFFE5E5E5),
    brightness: Brightness.light,
    accentIconTheme: IconThemeData(color: Colors.white),
    dividerColor: Colors.white54,
  );
}