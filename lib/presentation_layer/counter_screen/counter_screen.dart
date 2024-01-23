import 'package:animated_counter_app/business_logic_layer/cubits/counter_cubit/counter_cubit.dart';
import 'package:animated_counter_app/config/extensions/theme_extensions.dart';
import 'package:animated_counter_app/config/sizes_config.dart';
import 'package:animated_counter_app/presentation_layer/counter_screen/widgets/counter_slider.dart';
import 'package:animated_counter_app/presentation_layer/counter_screen/widgets/liquid_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: SizesConfig.s40,
              child: Text(
                context.select((CounterCubit counterCubit) =>
                    counterCubit.state.counter.toString()),
                style: TextStyle(color: Theme.of(context).liquidThemeColor),
              )),
          const LiquedBackground(),
          Positioned(
            bottom: SizesConfig.s40,
            child: BlocProvider.value(
                value: BlocProvider.of<CounterCubit>(context),
                child: const CounterSlider(
                  counterColor: Colors.black,
                )),
          )
        ],
      ),
    );
  }
}
