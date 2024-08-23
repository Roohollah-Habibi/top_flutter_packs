import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  colors: [Colors.blueGrey, Colors.cyanAccent.shade700, Colors.indigo.shade900],
);

// Styling expansion body text style
TextStyle expansionDetailsTextStyle = GoogleFonts.oswald(fontWeight: FontWeight.w700,fontSize: 20,letterSpacing: 2,color: Colors.black87);

// Styling expansion TextButton textStyle
TextStyle detailsTextButtonStyle= const TextStyle(fontWeight: FontWeight.w900,fontSize: 20);

// Styling seeMore in ExpansionPanel List
TextStyle seeMoreStyle = const TextStyle(fontWeight: FontWeight.bold,fontSize: 15);