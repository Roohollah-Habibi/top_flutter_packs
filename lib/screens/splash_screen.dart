import 'package:flutter/material.dart';
import 'package:mypackages_use/methods_and_constants/methods_and_constants.dart';
import 'package:mypackages_use/stylesDecoration/stylesAndDecorations.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DecoratedBox(
          decoration: BoxDecoration(
            gradient: splashScreenBackgroundColor,
          ),
          child: const Center(
            child: OrientationBuilder(
              builder: orientationBuilder,
            ),
          ),
        ),
      ),
    );
  }
}
