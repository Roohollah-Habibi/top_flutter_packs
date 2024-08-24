import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mypackages_use/methods_and_constants/methods_and_constants.dart';

const String imgSrc = 'assets/images/toast.png';
const String description =
    'Now this toast library supports two kinds of toast messages one which requires BuildContext other with No BuildContext';

class ToastScreen extends StatelessWidget {
  const ToastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: const Text('Flutter Toast'),),
      body: buildBodyCenter(list: [
        SizedBox(
          height: 230,
          child: Image.asset(
            imgSrc,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                foregroundColor: Colors.white,
                textStyle:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            onPressed: () => showToastMe('Toast Example'),
            child: const Text('Show Toast Example'),
          ),
        ),
        buildDescriptionTitle('#Description'),
        buildTextDescription(description),
        buildDataTable(linux: false, macOs: false, windows: false),
        buildInstallingPart(
            pubAdd: '\$ flutter pub add fluttertoast',
            import: 'package:fluttertoast/fluttertoast.dart'),
      ]),
    );
  }
}

void showToastMe(String msg) => Fluttertoast.showToast(
      msg: msg,
  toastLength: Toast.LENGTH_LONG,
  gravity: ToastGravity.CENTER,
  fontSize: 24,
  backgroundColor: Colors.orange,
  textColor: Colors.indigo,
    );
