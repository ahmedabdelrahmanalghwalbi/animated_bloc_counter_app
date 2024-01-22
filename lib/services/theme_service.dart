import 'package:flutter/material.dart';

class ThemeService {
  const ThemeService._();
  //light theme colors
  static const Color lightBackgroundColor = Color(0xfff2f2f2);
  static const Color lightPrimaryColor = Color(0xfff2f2f2);
  static final Color lightAccentColor = Colors.blueGrey.shade200;
  static const Color lightParcticalColor = Color(0x44948282);
  //dark theme colors
  static const Color darkBackgroundColor = Color(0xff1a2127);
  static const Color darkPrimaryColor = Color(0xff1a2127);
  static final Color darkAccentColor = Colors.blueGrey.shade600;
  static const Color darkParcticalColor = Color(0x441c2a3d);

  static final ThemeData lightTheme = ThemeData(
      primaryColor: lightPrimaryColor,
      colorScheme: ColorScheme.light(
        background: lightBackgroundColor,
        primary: lightPrimaryColor,
        secondary: lightAccentColor,
        surface: lightParcticalColor,
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity);
  static final ThemeData darkTheme = ThemeData(
      primaryColor: darkPrimaryColor,
      colorScheme: ColorScheme.dark(
        background: darkBackgroundColor,
        primary: darkPrimaryColor,
        secondary: darkAccentColor,
        surface: darkParcticalColor,
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity);
}
