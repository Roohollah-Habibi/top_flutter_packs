import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mypackages_use/custom_widgets/expansion_body.dart';
import 'package:mypackages_use/models/Item.dart';
import 'package:mypackages_use/custom_widgets/custom_expansion_panel.dart';
import 'package:mypackages_use/models/bodyModel.dart';
import 'package:mypackages_use/screens/font_awsome_screen.dart';
import 'package:mypackages_use/screens/google_fonts_screen.dart';
import 'package:mypackages_use/screens/home_screen.dart';
import 'package:mypackages_use/screens/shimmer.dart';
import 'package:mypackages_use/screens/toast_screen.dart';
import 'package:mypackages_use/stylesDecoration/stylesAndDecorations.dart';

const splashScreenImage = 'assets/images/flutter-pack1.png';
const shimmerNetworkImage = 'https://ew.com/thmb/59kmHdEEWDQ0ZuydbH0ZC9T1qyE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/tom-and-jerry1-27c66b94f51c4835bda8c91470dc8efa.jpg';

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
    headName: 'Shimmer',
    imageSrc: 'assets/images/shimmer.gif',
    bodyDetails:
        'A package provides an easy way to add shimmer effect in Flutter project',
    page: ShimmerPage(),
  ),
   const BodyModel(
    headName: 'FontAwesome',
    imageSrc: 'assets/images/font-awesome.png',
    bodyDetails:
        'Font Awesome is the Internet\'s icon library and toolkit, used by millions of designers, developers, and content creators.',
    page: FontAwesomeScreen(),
  ),
   const BodyModel(
    headName: 'GoogleFonts',
    imageSrc: 'assets/images/google-fonts.gif',
    bodyDetails:
        'Google Fonts collaborates with type designers, foundries and the design community worldwide to create a directory of open source fonts.',
    page: GoogleFontsScreen(),
  ),
  const BodyModel(
    headName: 'flutter-toast',
    imageSrc: 'assets/images/toast.png',
    bodyDetails:
        'Now this toast library supports two kinds of toast messages one which requires BuildContext other with No BuildContext',
    page: ToastScreen(),
  ),
  const BodyModel(
    headName: 'audio players',
    imageSrc: 'assets/images/toast.png',
    bodyDetails:
        'Now this toast library supports two kinds of toast messages one which requires BuildContext other with No BuildContext',
    page: ToastScreen(),
  ),
];

// show expansion panel in HomeScreen page
List<Item> expansionPanelHeaderAndBody = [
  for (BodyModel bodyItem in bodyModel)
    Item(
      header: HeaderExpansion(
        headerName: bodyItem.headName,
        newPage: bodyItem.page,
      ),
      body: ExpansionBody(
          imgSrc: bodyItem.imageSrc,
          bodyDetails: bodyItem.bodyDetails,
          newPage: bodyItem.page),
    ),
];

// building the widgets body
Widget buildBodyCenter({required List<Widget> list}) {
  return Center(
    child: Card(
      margin: const EdgeInsets.all(20),
      elevation: 10,
      color: Colors.blueGrey.shade100,
      shadowColor: Colors.black,
      child: ListView(
        children: list,
      ),
    ),
  );
}

// building description
Text buildTextDescription(String description) {
  return Text(
    description,
    textAlign: TextAlign.center,
    style: descriptionStyle,
  );
}

// building description title
Widget buildDescriptionTitle(String title) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 15.0,
      top: 15,
    ),
    child: Text(
      title,
      style: descriptionTitleStyle,
      textAlign: TextAlign.start,
    ),
  );
}

// Building installing part
Widget buildInstallingPart({required String pubAdd, required String import}) {
  return Padding(
    padding: const EdgeInsets.all( 8.0),
    child: Column(
      children: [
        Card(
          color: Colors.blueGrey.shade200,
          child: ListTile(
            isThreeLine: true,
            title: const Text(
              'with Flutter',
              style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.w900),
            ),
            subtitle:
            buildTextDescription('\$ $pubAdd'),
          ),
        ),
        Card(
          color: Colors.blueGrey.shade200,
          child: ListTile(
            title: const Text(
              'Import',
              style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.w900),
            ),
            subtitle:
            buildTextDescription(import),
          ),
        ),
      ],
    ),
  );
}


// Building a table to show the device supports
Widget buildDataTable({
  bool android = true,
  bool ios = true,
  bool web = true,
  bool linux = true,
  bool macOs = true,
  bool windows = true,
}) {
  return SizedBox(
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: DataTable(
          columnSpacing: 20,
          horizontalMargin: 10,
          headingTextStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Color.fromARGB(207, 95, 54, 143)),
          border: TableBorder.all(
              color: Colors.blue.shade400,
              width: 2,
              borderRadius: BorderRadius.circular(10)),
          columns: const <DataColumn>[
            DataColumn(
              label: Text('Android'),
              tooltip: 'Android',
            ),
            DataColumn(
              label: Text('IOS'),
              tooltip: 'IOS',
            ),
            DataColumn(
              label: Text('Linux'),
              tooltip: 'Linux',
            ),
            DataColumn(
              label: Text('MacOs'),
              tooltip: 'MacOs',
            ),
            DataColumn(
              label: Text('Web'),
              tooltip: 'Web',
            ),
            DataColumn(
              label: Text('Windows'),
              tooltip: 'Windows',
            ),
          ],
          rows: <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Center(child: FaIcon(android? FontAwesomeIcons.check : FontAwesomeIcons.xmark,color: android? Colors.green.shade700 : Colors.red,))),
                DataCell(Center(child: FaIcon(ios? FontAwesomeIcons.check : FontAwesomeIcons.xmark,color: ios? Colors.green.shade700 : Colors.red,))),
                DataCell(Center(child: FaIcon(linux? FontAwesomeIcons.check : FontAwesomeIcons.xmark,color: linux? Colors.green.shade700 : Colors.red,))),
                DataCell(Center(child: FaIcon(macOs? FontAwesomeIcons.check : FontAwesomeIcons.xmark,color: macOs? Colors.green.shade700 : Colors.red,))),
                DataCell(Center(child: FaIcon(web? FontAwesomeIcons.check : FontAwesomeIcons.xmark,color: web? Colors.green.shade700 : Colors.red,))),
                DataCell(Center(child: FaIcon(windows? FontAwesomeIcons.check : FontAwesomeIcons.xmark,color: windows? Colors.green.shade700 : Colors.red,))),
              ],
            ),
          ]),
    ),
  );
}

