import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookTheme(name: 'Light', isDefault: true)
ThemeData getLightTheme() => ThemeData(
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: Colors.blue,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
      textTheme: TextTheme(
        bodyText1: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: const Color(0XFF30343F),
        ),
        headline1: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        headline2: GoogleFonts.poppins(
          fontSize: 14,
          color: const Color(0XFF30343F),
          fontWeight: FontWeight.w600,
        ),
        headline3: GoogleFonts.poppins(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        headline4: GoogleFonts.poppins(
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
        headline5: GoogleFonts.poppins(
          fontSize: 14,
        ),
        bodyText2: GoogleFonts.poppins(
          fontSize: 14,
        ),
      ),
    );
