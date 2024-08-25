import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mypackages_use/stylesDecoration/styles_decorations.dart';

const imageSrc = 'assets/images/shimmer.gif';

class ExpansionBody extends StatelessWidget {
  final String imgSrc;
  final String bodyDetails;
  final Widget newPage;


  const ExpansionBody(
      {super.key,
      required this.imgSrc,
      required this.bodyDetails,
      required this.newPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: splashScreenBackgroundColor),
      child: Column(
        children: [
          SizedBox(
              height: 200,
              width: double.infinity,
              child: Image.asset(imgSrc, fit: BoxFit.fill)),
          buildDivider,
          Text(
            bodyDetails,
            style: expansionDetailsTextStyle,
            textAlign: TextAlign.center,
          ),
          TextButton.icon(
            onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => newPage,)),
            label: const Text('Learn more'),
            style: TextButton.styleFrom(
              foregroundColor: Colors.black45,
              textStyle: detailsTextButtonStyle,
            ),
            icon: const FaIcon(
              FontAwesomeIcons.rightLong,
              size: 25,
            ),
            iconAlignment: IconAlignment.end,
          )
        ],
      ),
    );
  }

  Divider get buildDivider {
    return Divider(
      thickness: 3,
      height: 20,
      color: Colors.indigo.shade900,
      indent: 30,
      endIndent: 30,
    );
  }
}
