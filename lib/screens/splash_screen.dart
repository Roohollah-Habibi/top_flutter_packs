import 'package:flutter/material.dart';
import 'package:mypackages_use/constants/constants.dart';

import '../styles & decoratins/stylesAndDecorations.dart';
import 'home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  void goHomeScreen(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DecoratedBox(
          decoration: BoxDecoration(
            gradient: splashScreenBackgroundColor,
          ),
          child: Center(
            child: OrientationBuilder(
              builder: (context, orientation) {
                if (orientation == Orientation.landscape) {
                  return Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 80 /100,
                        height: MediaQuery.of(context).size.height * 80 /100,
                        child: Image.asset(splashScreenImage,fit: BoxFit.contain,),
                      ),
                      buildOutlinedButton(context),
                    ],
                  );
                }else{
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: Image.asset(splashScreenImage),
                      ),
                      const SizedBox(height: 100),
                      buildOutlinedButton(context),
                    ],
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }

  OutlinedButton buildOutlinedButton(BuildContext context) {
    return OutlinedButton.icon(
                style: splashButtonStyle,
                icon: const Icon(Icons.arrow_forward),
                iconAlignment: IconAlignment.end,
                onPressed: () => goHomeScreen(context),
                label: const Text(
                  'Let\'s Learn',
                  textAlign: TextAlign.center,
                ),
              );
  }
}
