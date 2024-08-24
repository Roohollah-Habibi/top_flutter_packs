import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mypackages_use/methods_and_constants/methods_and_constants.dart';
import 'package:mypackages_use/stylesDecoration/stylesAndDecorations.dart';

const List<IconData> fontAwesomeList = [
  FontAwesomeIcons.fontAwesome,
  FontAwesomeIcons.android,
  FontAwesomeIcons.font,
  FontAwesomeIcons.folder,
  FontAwesomeIcons.addressBook,
  FontAwesomeIcons.babyCarriage,
  FontAwesomeIcons.table,
  FontAwesomeIcons.envelopeOpenText,
  FontAwesomeIcons.tape,
  FontAwesomeIcons.cableCar,
  FontAwesomeIcons.adn,
  FontAwesomeIcons.print,
  FontAwesomeIcons.alignRight,
  FontAwesomeIcons.amazonPay,
  FontAwesomeIcons.angleDown,
  FontAwesomeIcons.hackerNews,
];
const String description =
    'Font Awesome is the Internet\'s icon library and toolkit, used by millions of designers, developers, and content creators.';

class FontAwesomeScreen extends StatelessWidget {
  const FontAwesomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: const Text('FontAwesome'),),
      body: Container(
        decoration: BoxDecoration(gradient: splashScreenBackgroundColor),
        child: buildBodyCenter(
          list: [
            buildTopPart,
            buildDescriptionTitle('#Description'),
            buildTextDescription(description),
            buildDataTable(),
            buildDescriptionTitle('#Installation'),
            buildInstallingPart(
                pubAdd: '\$ flutter pub add font_awesome_flutter',
                import:
                    'package:font_awesome_flutter/font_awesome_flutter.dart'),
          ],
        ),
      ),
    );
  }

  SizedBox get buildTopPart {
    return SizedBox(
      height: 250,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, crossAxisSpacing: 10, mainAxisSpacing: 10),
          children: fontAwesomeList
              .map(
                (icons) => Container(
                  alignment: Alignment.center,
                  color: Colors.purple[200],
                  child: FaIcon(icons),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
