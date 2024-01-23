import 'package:animated_counter_app/config/colors_config.dart';
import 'package:animated_counter_app/services/theme_service.dart';
import 'package:flutter/material.dart';

extension ThemeExtraProps on ThemeData {
  Color get liquidThemeColor =>
      ThemeService.getCurrentPlatformThemeMode == Brightness.dark
          ? ColorsConfig.darkLiquidColor
          : ColorsConfig.lightLiquidColor;
}
