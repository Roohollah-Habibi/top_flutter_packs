import 'package:flutter/material.dart';

// styling button in splash screen
ButtonStyle splashButtonStyle = OutlinedButton.styleFrom(
  foregroundColor: Colors.black,
  iconColor: Colors.indigo.shade900,
  overlayColor: Colors.indigo.shade900,
  textStyle: const TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
  side: const BorderSide(width: 3, color: Colors.indigo),
  fixedSize: const Size(120, 100),
  alignment: Alignment.center,
  shape: const StarBorder.polygon(pointRounding: 1, sides: 6),
);

// styling background color of splash screen
Gradient splashScreenBackgroundColor = RadialGradient(
  radius: 1.4,
  colors: [Colors.white, Colors.cyanAccent, Colors.indigo.shade900],
);
