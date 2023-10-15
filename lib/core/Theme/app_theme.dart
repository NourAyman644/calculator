import 'package:calculator/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData getDarkTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.black,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ))),
    textTheme: TextTheme(
      displayMedium: GoogleFonts.lato(
        fontSize: 35,
        fontWeight: FontWeight.w700,
        color: AppColors.white,
      ),
    ),
  );
}
