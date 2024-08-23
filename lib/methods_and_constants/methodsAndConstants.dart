import 'package:flutter/material.dart';
import 'package:mypackages_use/custom_widgets/expansion_body.dart';
import 'package:mypackages_use/models/Item.dart';
import 'package:mypackages_use/custom_widgets/custom_expansion_panel.dart';
import 'package:mypackages_use/models/bodyModel.dart';
import 'package:mypackages_use/screens/details_screen.dart';
import 'package:mypackages_use/screens/home_screen.dart';
import 'package:mypackages_use/stylesDecoration/stylesAndDecorations.dart';

const splashScreenImage = 'assets/images/flutter-pack1.png';

// check if the layout is landscape or portrait
Widget orientationBuilder(BuildContext context, Orientation orientation) {
  if (orientation == Orientation.landscape) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 80 / 100,
          height: MediaQuery.of(context).size.height * 80 / 100,
          child: Image.asset(
            splashScreenImage,
            fit: BoxFit.contain,
          ),
        ),
        buildOutlinedButton(context),
      ],
    );
  } else {
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
}

// create an outlineButton in SplashScreen
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

// route to HomeScreen() from Splash Screen
void goHomeScreen(BuildContext ctx) {
  Navigator.of(ctx).push(MaterialPageRoute(
    builder: (context) => const HomeScreen(),
  ));
}

// Body mdel for bodyExpansion
List<BodyModel> bodyModel = [
  const BodyModel(
    imageSrc: 'assets/images/shimmer.gif',
    bodyDetails:
        'A package provides an easy way to add shimmer effect in Flutter project',
  ),
];

// show expansion panel in HomeScreen page
List<Item> expansionPanelHeaderAndBody = [
  Item(
    header: const HeaderExpansion(
      headerName: 'Shimmer',
      newPage: DetailsScreen(),
    ),
    body: ExpansionBody(
        imgSrc: bodyModel[0].imageSrc,
        bodyDetails: bodyModel[0].bodyDetails,
        newPage: const DetailsScreen()),
  ),
];
