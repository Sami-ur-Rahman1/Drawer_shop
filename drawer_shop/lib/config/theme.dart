
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Avenir',
    textTheme: TextTheme()
  );
}

TextTheme textTheme() {
  return TextTheme(
    ////////////headline 1/////////////
    headlineLarge: TextStyle(
          color: Colors.black,
          fontSize: 32,
          fontWeight: FontWeight.bold,
    ),
    ////////////headline 2/////////////
    headlineMedium: TextStyle(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    ////////////headline 3/////////////
    headlineSmall: TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    ////////////headline 4/////////////
    displayLarge: TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    ////////////headline 5/////////////
    displayMedium: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    ////////////headline 6/////////////
    displaySmall: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    ////////////bodyText 1/////////////
    bodyLarge: TextStyle(
      color: Colors.black,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ), 
    ////////////bodyText 2/////////////
    bodyMedium:  TextStyle(
      color: Colors.black,
      fontSize: 10,
      fontWeight: FontWeight.normal,
    ), 

  );
}