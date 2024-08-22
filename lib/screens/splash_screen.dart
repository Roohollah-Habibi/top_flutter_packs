import 'package:flutter/material.dart';
import 'package:mypackages_use/methodsAndConstants/methodsAndConstants.dart';
import 'package:mypackages_use/stylesDecoration/stylesAndDecorations.dart';
import 'home_screen.dart';

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
