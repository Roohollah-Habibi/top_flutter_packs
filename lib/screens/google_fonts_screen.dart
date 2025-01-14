import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mypackages_use/methods_and_constants/methods_and_constants.dart';

const imgSrc = 'assets/images/google-fonts.gif';
const description = 'A Flutter package to use fonts from fonts.google.com. with popularity of 100%';
class GoogleFontsScreen extends StatelessWidget {
  const GoogleFontsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(centerTitle: true,title: const Text('Google Fonts'),),
      body: buildBodyCenter(list: [
        SizedBox(height: 140,child: Image.asset(imgSrc,fit: BoxFit.contain,)),
        Text('some Text styled with googleFonts',style: GoogleFonts.greatVibes(fontSize: 30,color: Colors.red),textAlign: TextAlign.center,),
        Text('some Text styled with googleFonts',style: GoogleFonts.dancingScript(fontSize: 27,color: Colors.blue),textAlign: TextAlign.center,),
        Text('some Text styled with googleFonts',style: GoogleFonts.oswald(fontSize: 25,color: Colors.blue),textAlign: TextAlign.center,),
        Text('some Text styled with googleFonts',style: GoogleFonts.bebasNeue(fontSize: 25,color: Colors.blue),textAlign: TextAlign.center,),
        buildDescriptionTitle('#Description'),
        buildTextDescription(description),
        buildDataTable(),
        buildDescriptionTitle('#Installation'),
        buildInstallingPart(pubAdd: '\$ flutter pub add google_fonts', import: 'package:google_fonts/google_fonts.dart'),
      ]),
    );
  }
}
