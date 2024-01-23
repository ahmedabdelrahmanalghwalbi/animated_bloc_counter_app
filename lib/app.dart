import 'package:animated_counter_app/business_logic_layer/cubits/theme_cubit/theme_cubit.dart';
import 'package:animated_counter_app/config/string_config.dart';
import 'package:animated_counter_app/router/router.dart';
import 'package:animated_counter_app/services/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => ThemeCubit())],
      child:
          const CounterApp(), //here i extract this widget as a seperated widget to solve issue that are tring to reading cubit instance from context and not found it
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({
    super.key,
  });

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> with WidgetsBindingObserver {
  @override
  void initState() {
    //adding bserver to observe on Platform ThemeMode changes
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void didChangePlatformBrightness() {
    //here listen on the current plateform when ThemeMode is Changes
    //so when change , i will update theme with the current Plateform theme
    context
        .read<ThemeCubit>()
        .updateThemeModeDependsOnChangesOfThemeModeThatComesFromTheCurrentPlatform();
    super.didChangePlatformBrightness();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringConfig.counterApp,
      initialRoute: StringConfig.counterRoute,
      onGenerateRoute: (settings) => RouteServices.onGenerateRoute(settings),
      theme: ThemeService.lightTheme,
      darkTheme: ThemeService.darkTheme,
      // its automatically detect the platform mode and appling it from the givin Theme and Dark theme but i will trying to appling this feature manually using cubit theme
      themeMode:
          context.select((ThemeCubit themeCubit) => themeCubit.state.themeMode),
      debugShowCheckedModeBanner: false,
    );
  }
}
