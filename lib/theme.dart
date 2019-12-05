import 'package:flutter/material.dart';
import 'utils/colors.dart';
import 'utils/utils.dart';

ThemeData buildThemeData() {
  final baseTheme = ThemeData(fontFamily: AvailableFonts.primaryFont);

  return baseTheme.copyWith(
    primaryColor: CustomColors.primaryColor,
    scaffoldBackgroundColor: Colors.deepPurple,
    appBarTheme: AppBarTheme(
      color: Colors.black45,
      elevation: 0,
    ),
  );
}
