import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mypackages_use/methods_and_constants/methods_and_constants.dart';
import 'package:intl/intl.dart';

Random random = Random();
const imgSrc = 'assets/images/intl.png';
const description = 'Provides internationalization and localization facilities, including message translation, plurals and genders, date/number formatting and parsing, and bidirectional text.';

class IntlScreen extends StatefulWidget {
  const IntlScreen({super.key});

  @override
  State<IntlScreen> createState() => _IntlScreenState();
}

class _IntlScreenState extends State<IntlScreen> {
  DateTime today = DateTime.now();
  String randomFormat = 'dd-MM-yyyy';
  List<String> formatList = [
    'dd-MM-yyyy',
    'MMMM-dd-yyyy',
    'dd-MMM-yy',
    'dd MMM yyyy',
    'yy MM dd',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Intl Pack'),
      ),
      body: buildBodyCenter(list: [
        SizedBox(
          height: 280,
          child: Image.asset(
            imgSrc,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Text(
            'Tooday is: ${DateFormat(randomFormat).format(today)}',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25,
                color: Colors.orange[600],
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: ElevatedButton.icon(
            onPressed: () {
              setState(() {
                randomFormat = formatList[random.nextInt(formatList.length)];
              });
            },
            label: const Text(
              'Change Format',
              style: TextStyle(fontSize: 20),
            ),
            iconAlignment: IconAlignment.end,
            icon: const FaIcon(FontAwesomeIcons.clock),
          ),
        ),
        buildDescriptionTitle('#Description'),
        buildTextDescription(description),
        const SizedBox(height: 20),
        buildDataTable(),
        buildDescriptionTitle('#Installation'),
        buildInstallingPart(
            pubAdd: 'dart pub add intl', import: 'package:intl/intl.dart'),
      ]),
    );
  }
}
