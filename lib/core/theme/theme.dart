import 'package:flutter/material.dart';
import 'package:tarkhineh_app/core/theme/color.dart';

// set project theme
ThemeData appTheme = ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: ColorApp.primary,
    titleTextStyle: TextStyle(
      color: ColorApp.white
    )
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(
      color: ColorApp.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: TextStyle(
      color: ColorApp.gray_8,
      fontSize: 17,
      fontWeight: FontWeight.normal
    )
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: ColorApp.primary,
  )
);