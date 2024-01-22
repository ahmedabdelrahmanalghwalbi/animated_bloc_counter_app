import 'package:animated_counter_app/config/string_config.dart';
import 'package:animated_counter_app/router/router.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringConfig.counterApp,
      initialRoute: StringConfig.counterRoute,
      onGenerateRoute: (settings) => RouteServices.onGenerateRoute(settings),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
