import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mypackages_use/methods_and_constants/methods_and_constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const String description =
    'A collection of loading indicators animated with flutter. Heavily inspired by @tobiasahlin\'s SpinKit.';
Random random = Random();
class SpinkitScreen extends StatefulWidget {
  const SpinkitScreen({super.key});

  @override
  State<SpinkitScreen> createState() => _SpinkitScreenState();
}

class _SpinkitScreenState extends State<SpinkitScreen> {
  int randomSpinner = 0;
  List<Widget> spinner = const [
  SpinKitCircle(color: Colors.orange,size: 50,),
    SpinKitRotatingPlain(color: Colors.orange,size: 50,),
    SpinKitCubeGrid(color: Colors.orange,size: 50,),
    SpinKitThreeBounce(color: Colors.orange,size: 50,),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Spin kit'), centerTitle: true,),
      body: buildBodyCenter(list: [
        SizedBox(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: 12,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                itemBuilder: (context, index) => SizedBox(
                  child: Image.asset('assets/images/spin$index.gif'),
                ),
              ),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: ElevatedButton.icon(
            iconAlignment: IconAlignment.end,
            icon: const FaIcon(FontAwesomeIcons.arrowsSpin),
            onPressed: () {
              setState(() {
                randomSpinner = random.nextInt(spinner.length);
              });
            },

            label: Text(
              'Try some ',
              style: GoogleFonts.agdasima(fontSize: 20),
            ),
          ),
        ),
        spinner[randomSpinner],
        buildDescriptionTitle('#Description'),
        buildTextDescription(description),
        buildDataTable(),
        buildDescriptionTitle('#Installation'),
        buildInstallingPart(
            pubAdd: '\$ flutter pub add flutter_spinkit',
            import: 'package:flutter_spinkit/flutter_spinkit.dart'),
      ]),
    );
  }
}
