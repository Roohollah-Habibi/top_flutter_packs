import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mypackages_use/methods_and_constants/methods_and_constants.dart';
import 'package:share_plus/share_plus.dart';

const imgSrc = 'assets/images/share_links.png';
const String description =
    'A Flutter plugin to share content from your Flutter app via the platform\'s share dialog.';

class SharePlusScreen extends StatefulWidget {
  const SharePlusScreen({super.key});

  @override
  State<SharePlusScreen> createState() => _SharePlusScreenState();
}

class _SharePlusScreenState extends State<SharePlusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Share Plus'),
        centerTitle: true,
      ),
      body: buildBodyCenter(list: [
        SizedBox(
          height: 300,
          child: Image.asset(
            imgSrc,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10.0),
          child: ElevatedButton.icon(
            onPressed: () {
              Share.share('Hello ');
              print('------------------');
            },
            label: const Text('Share App',style: TextStyle(fontSize: 20),),
            iconAlignment: IconAlignment.end,
            icon: const FaIcon(FontAwesomeIcons.share),
          ),
        ),
        buildDescriptionTitle('#Description'),
        buildTextDescription(description),
        buildDataTable(),
        buildDescriptionTitle('#Installation'),
        buildInstallingPart(
            pubAdd: 'flutter pub add share_plus',
            import: 'package:share_plus/share_plus.dart'),
      ]),
    );
  }
}
