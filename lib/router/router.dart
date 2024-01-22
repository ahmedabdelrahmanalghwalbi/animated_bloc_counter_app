import 'package:animated_counter_app/config/string_config.dart';
import 'package:animated_counter_app/presentation_layer/counter_screen/counter_screen.dart';
import 'package:flutter/material.dart';

class RouteServices {
  //is a private constructor with the underscore prefix. The purpose of using `._()` is to prevent the class from being instantiated from outside of the class itself.
  const RouteServices._();

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case StringConfig.counterRoute:
        return MaterialPageRoute(builder: (_) => const CounterScreen());

      default:
        throw MaterialPageRoute(builder: (_) => const CounterScreen());
    }
  }
}
