import 'package:fitness_tracker_app/utils/constants/colors.dart';
import 'package:fitness_tracker_app/utils/themes/custom_themes/appbar_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData appTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Tcolors.backgroundColor,
    appBarTheme: TAppbarTheme.appBarTheme,
  );
}
