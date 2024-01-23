import 'package:animated_counter_app/services/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  //initalizing the theme mode value from the current Platform Theme
  ThemeCubit()
      : super(ThemeState(
            themeMode:
                ThemeService.getCurrentPlatformThemeMode == Brightness.light
                    ? ThemeMode.light
                    : ThemeMode.dark)) {
    //here i call this method to check in intializing this object about current Platform Brightness mode then emit new state with the current Platform Mode
    updateThemeModeDependsOnChangesOfThemeModeThatComesFromTheCurrentPlatform();
  }

  void
      updateThemeModeDependsOnChangesOfThemeModeThatComesFromTheCurrentPlatform() {
    ThemeService.setStatusBarAndNavigationBarColors(
        _getCurrentPlatFormThemeMode());
    emit(ThemeState(themeMode: _getCurrentPlatFormThemeMode()));
  }

  ThemeMode _getCurrentPlatFormThemeMode() =>
      ThemeService.getCurrentPlatformThemeMode == Brightness.light
          ? ThemeMode.light
          : ThemeMode.dark;
}
