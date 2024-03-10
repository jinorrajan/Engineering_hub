
//import 'package:engineering_hub/application/core/constants/colors.dart';
//import 'package:engineering_hub/application/core/theme/custom_theme/appbar_theme.dart';
import 'package:engineering_hub/cse/application/core/constants/colors.dart';
import 'package:flutter/material.dart';

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