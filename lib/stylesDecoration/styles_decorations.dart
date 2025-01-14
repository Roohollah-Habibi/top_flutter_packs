import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// styling button in splash screen
ButtonStyle splashButtonStyle = OutlinedButton.styleFrom(
  foregroundColor: Colors.black,
  iconColor: Colors.yellow,
  overlayColor: Colors.indigo.shade900,
  textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w900),
  side: const BorderSide(width: 3, color: Colors.white),
  fixedSize: const Size(122, 120),
  alignment: Alignment.center,
  shape: const StarBorder.polygon(pointRounding: 1, sides: 6),
);

// styling background color of splash screen
Gradient splashScreenBackgroundColor = RadialGradient(
  center: Alignment.centerLeft,
  focalRadius: 2,
  radius: 1.4,
  colors: [Colors.yellow, Colors.purple, Colors.indigo.shade800],
);

// Styling expansion body text style
TextStyle expansionDetailsTextStyle = GoogleFonts.oswald(fontWeight: FontWeight.w700,fontSize: 20,letterSpacing: 2,color: Colors.white70);

// Styling expansion TextButton textStyle
TextStyle detailsTextButtonStyle= const TextStyle(fontWeight: FontWeight.w900,fontSize: 20);

// Styling seeMore in ExpansionPanel List
TextStyle seeMoreStyle = const TextStyle(fontWeight: FontWeight.bold,fontSize: 15);

TextStyle descriptionTitleStyle = const TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color: Colors.black87);
TextStyle descriptionStyle = const TextStyle(fontWeight: FontWeight.w500,fontSize: 20,color: Colors.black54);

TextStyle textShimmerEffectStyle = const TextStyle(fontSize: 25,fontWeight: FontWeight.bold,letterSpacing: 1.5);
