import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/core/resources/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    // main colors
    useMaterial3: true,
    colorSchemeSeed: AppColors.primary,
    // Bottom nav bar theme
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      // backgroundColor: AppColors.secondaryBackground,
      selectedItemColor: AppColors.primary,
      // unselectedItemColor: AppColors.primaryText,
      type: BottomNavigationBarType.fixed,
    ),

    // text theme
    textTheme: textTheme,
  );
  static ThemeData darkTheme = ThemeData(
    // main colors
    brightness: Brightness.dark,
    // scaffoldBackgroundColor: AppColors.primaryBackground,
    useMaterial3: true,
    colorSchemeSeed: AppColors.primary,
    // Bottom nav bar theme
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      // backgroundColor: AppColors.secondaryBackground,
      selectedItemColor: AppColors.primary,
      // unselectedItemColor: AppColors.primaryText,
      type: BottomNavigationBarType.fixed,
    ),
    // text theme
    textTheme: textTheme,
  );
  static TextTheme textTheme = TextTheme(
    titleMedium: _getTextStyle(
      fontSize: 20,
    ),
    titleSmall: _getTextStyle(
      fontSize: 18,
    ),
    bodyLarge: _getTextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: _getTextStyle(
      fontSize: 14,
    ),
    bodySmall: _getTextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
  );
  static TextStyle _getTextStyle({
    required double fontSize,
    FontWeight fontWeight = FontWeight.w600,
  }) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }
}


