import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mypackages_use/methods_and_constants/methods_and_constants.dart';
import 'package:mypackages_use/stylesDecoration/styles_decorations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool doExpand = false;
  List<ExpansionPanel> customExpansionPanel = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(132, 79, 19, 111),
        leadingWidth: 30,
        centerTitle: true,
        title: const Text('top packs you should know'),
        leading: const Padding(
          padding: EdgeInsets.only(top: 15.0,left: 20),
          child: FaIcon(FontAwesomeIcons.camera),
        ),
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: splashScreenBackgroundColor,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: ExpansionPanelList(
                expandIconColor: Colors.white,
                elevation: 4,
                dividerColor: Colors.white,
                expansionCallback: (panelIndex, isExpanded) {
                  setState(() {
                    expansionPanelHeaderAndBody[panelIndex].isExpanded =
                        isExpanded;
                  });
                },
                children: expansionPanelHeaderAndBody
                    .map((item) => ExpansionPanel(
                          backgroundColor: Colors.lightBlue.shade900,
                          isExpanded: item.isExpanded,
                          headerBuilder: (context, isExpanded) => item.header,
                          body: item.body,
                        ))
                    .toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
