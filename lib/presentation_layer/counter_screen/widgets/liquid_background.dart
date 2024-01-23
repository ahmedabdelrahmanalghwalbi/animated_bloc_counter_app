import 'package:flutter/material.dart';
import 'package:animated_counter_app/config/extensions/theme_extensions.dart';
import 'package:animated_counter_app/config/sizes_config.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart'
    as liquid;

class LiquedBackground extends StatelessWidget {
  const LiquedBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          backgroundBlendMode: BlendMode.dstOver),
      child: liquid.LiquidLinearProgressIndicator(
        value:
            SizesConfig.s0_5, // Animation progress value (between 0.0 and 1.0)
        valueColor: AlwaysStoppedAnimation(Theme.of(context).liquidThemeColor),
        borderRadius: SizesConfig.s12,
        direction:
            Axis.vertical, // Animation direction (vertical or horizontal)
      ),
    );
  }
}
