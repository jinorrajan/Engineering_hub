

import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CAppTheme{
  CAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: CColors.primary,
    scaffoldBackgroundColor: Colors.white,
    //appBarTheme: CAppBartheme.lightAppbarTheme
  );
}