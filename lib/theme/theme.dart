import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xicom_sample/theme/palettes.dart';

class CustomTheme {
  static final ThemeData light = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: Palettes.white,
    appBarTheme: ThemeData().appBarTheme.copyWith(
          backgroundColor: Palettes.white,
        ),
    // primaryIconTheme: const IconThemeData(color: Colors.white),
    primaryIconTheme: const IconThemeData(color: Colors.black),
    primaryColorDark: Palettes.primary,
    iconTheme: ThemeData().iconTheme.copyWith(
          color: Palettes.grey,
        ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.montserrat(fontSize: 32, color: Palettes.textColor),
      displayMedium: GoogleFonts.montserrat(fontSize: 30, color: Palettes.textColor),
      displaySmall: GoogleFonts.montserrat(fontSize: 28, color: Palettes.textColor),
      //
      headlineLarge: GoogleFonts.montserrat(fontSize: 26, color: Palettes.textColor),
      headlineMedium: GoogleFonts.montserrat(fontSize: 24, color: Palettes.textColor),
      headlineSmall: GoogleFonts.montserrat(fontSize: 22, color: Palettes.textColor),
      //
      titleLarge: GoogleFonts.montserrat(fontSize: 20, color: Palettes.textColor),
      titleMedium: GoogleFonts.montserrat(fontSize: 18, color: Palettes.textColor),
      titleSmall: GoogleFonts.montserrat(fontSize: 16, color: Palettes.textColor),
      //
      bodyLarge: GoogleFonts.montserrat(fontSize: 14, color: Palettes.textColor),
      bodyMedium: GoogleFonts.montserrat(fontSize: 12, color: Palettes.textColor),
      bodySmall: GoogleFonts.montserrat(fontSize: 10, color: Palettes.textColor),
    ),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.lightBlue).copyWith(secondary: Palettes.primary),
  );

  static final ThemeData dark = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: Palettes.black,
    primaryIconTheme: const IconThemeData(color: Colors.white),
    appBarTheme: ThemeData().appBarTheme.copyWith(
          backgroundColor: Palettes.black,
        ),
    iconTheme: ThemeData().iconTheme.copyWith(
          color: Palettes.white,
        ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.montserrat(fontSize: 34, color: Palettes.white),
      displayMedium: GoogleFonts.montserrat(fontSize: 32, color: Palettes.white),
      displaySmall: GoogleFonts.montserrat(fontSize: 30, color: Palettes.white),
      //
      headlineLarge: GoogleFonts.montserrat(fontSize: 28, color: Palettes.white),
      headlineMedium: GoogleFonts.montserrat(fontSize: 26, color: Palettes.white),
      headlineSmall: GoogleFonts.montserrat(fontSize: 24, color: Palettes.white),
      //
      titleLarge: GoogleFonts.montserrat(fontSize: 22, color: Palettes.white),
      titleMedium: GoogleFonts.montserrat(fontSize: 20, color: Palettes.white),
      titleSmall: GoogleFonts.montserrat(fontSize: 18, color: Palettes.white),
      //
      bodyLarge: GoogleFonts.montserrat(fontSize: 16, color: Palettes.white),
      bodyMedium: GoogleFonts.montserrat(fontSize: 14, color: Palettes.white),
      bodySmall: GoogleFonts.montserrat(fontSize: 12, color: Palettes.white),
    ),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.lightBlue).copyWith(secondary: Palettes.primary),
  );
}
