import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

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

  //light Theme configuration
  static final ThemeData lightTheme = ThemeData(
      primaryColor: lightPrimaryColor,
      colorScheme: ColorScheme.light(
        background: lightBackgroundColor,
        primary: lightPrimaryColor,
        secondary: lightAccentColor,
        surface: lightParcticalColor,
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity);
  //dark Theme configuration
  static final ThemeData darkTheme = ThemeData(
      primaryColor: darkPrimaryColor,
      colorScheme: ColorScheme.dark(
        background: darkBackgroundColor,
        primary: darkPrimaryColor,
        secondary: darkAccentColor,
        surface: darkParcticalColor,
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity);

// setup of status bar and navigation bar themes
  static setStatusBarAndNavigationBarColors(ThemeMode themeMode) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness:
            themeMode == ThemeMode.light ? Brightness.light : Brightness.dark,
        systemNavigationBarIconBrightness:
            themeMode == ThemeMode.light ? Brightness.light : Brightness.dark,
        systemNavigationBarColor: themeMode == ThemeMode.light
            ? lightBackgroundColor
            : darkBackgroundColor,
        systemNavigationBarDividerColor: Colors.transparent));
  }

  // getter that detect and return the current Platform Brightness (light || dark)
  static Brightness get getCurrentPlatformThemeMode =>
      SchedulerBinding.instance.platformDispatcher.platformBrightness;
  // MediaQuery.of(_).platformBrightness; ==> this is need to context
}
