import 'package:fitness_tracker_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TAppbarTheme {
  TAppbarTheme._();

  static AppBarTheme appBarTheme = const AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Tcolors.appBarColor,
    iconTheme: IconThemeData(color: Tcolors.secondaryColor, size: 24),
    actionsIconTheme: IconThemeData(color: Tcolors.secondaryColor, size: 24),
    titleTextStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Tcolors.primaryColor,
    ),
  );
}
