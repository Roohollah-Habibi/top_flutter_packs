import 'package:flutter/material.dart';

class GoogleFontsScreen extends StatelessWidget {
  const GoogleFontsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FlutterLogo(
          size: 100,
        ),
      ),
    );
  }
}