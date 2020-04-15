import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const PrimaryColor = Color(0xFFd11141);
const PrimaryColorLight = Color(0xFFff5669);
const PrimaryColorDark = Color(0xFF980019);

const SecondaryColor = Color(0xFF11d1a1);
const SecondaryColorLight = Color(0xFF64ffd2);
const SecondaryColorDark = Color(0xFF009f72);

const Background = Color(0xFFF8F8F8);

class JootlTheme {
  static final ThemeData main = _buildTheme();

  static ThemeData _buildTheme() {
    return ThemeData(
      brightness: Brightness.light,

      textTheme: GoogleFonts.robotoMonoTextTheme(),

      accentColor: SecondaryColor,
      accentColorBrightness: Brightness.dark,

      primaryColor: PrimaryColor,
      primaryColorDark: PrimaryColorDark,
      primaryColorLight: PrimaryColorLight,
      primaryColorBrightness: Brightness.dark,

      buttonTheme: ButtonThemeData(
        minWidth: 64.0,
        height: 36.0,
        shape: StadiumBorder(),
        buttonColor: SecondaryColor,
        splashColor: SecondaryColorLight,
        textTheme: ButtonTextTheme.primary
      ),

      backgroundColor: Background
    );
  }
}
