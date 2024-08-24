import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mypackages_use/methods_and_constants/methods_and_constants.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

const String description =
    'RFlutter Alert is super customizable and easy-to-use alert/popup dialogs for Flutter. You may create reusable alert styles or add buttons as much as you want with ease.';
const String imgSrc = 'assets/images/rflutter_alert.gif';

class RFlutterScreen extends StatelessWidget {
  const RFlutterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: const Text('rFlutter'),),
      body: buildBodyCenter(list: [
        SizedBox(
          height: 300,
          child: Image.asset(
            imgSrc,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
          child: ElevatedButton.icon(
              onPressed: () {
                Alert(context: context,content: const Text('an Alert is appeared on the screen'),title: 'Alert!!',
                  type: AlertType.success,
                ).show();
              },
              icon: const FaIcon(FontAwesomeIcons.info),
              label: const Text('Try Me',style: TextStyle(fontSize: 20),)),
        ),
        buildDescriptionTitle('#Description'),
        buildTextDescription(description),
        buildDataTable(),
        buildDescriptionTitle('#Installation'),
        buildInstallingPart(
            pubAdd: '\$ flutter pub add rflutter_alert',
            import: 'package:rflutter_alert/rflutter_alert.dart'),
      ]),
    );
  }
}
