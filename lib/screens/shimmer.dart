import 'package:flutter/material.dart';
import 'package:mypackages_use/methods_and_constants/methods_and_constants.dart';
import 'package:mypackages_use/stylesDecoration/styles_decorations.dart';
import 'package:shimmer/shimmer.dart';

const description =
    'A package provides an easy way to add shimmer effect in Flutter project';

class ShimmerPage extends StatelessWidget {
  const ShimmerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shimmer'),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: buildBodyCenter(
        list: [
          buildShimmerContainer,
          const SizedBox(height: 20),
          buildShimmerText,
          buildDescriptionTitle('#Description'),
          buildTextDescription(description),
          const SizedBox(height: 10),
          buildDataTable(),
          buildDescriptionTitle('#Installing'),
          buildInstallingPart(
              pubAdd: 'flutter pub add shimmer',
              import: 'package:shimmer/shimmer.dart'),
        ],
      ),
    );
  }

  Widget get buildShimmerText {
    return Center(
      child: Shimmer.fromColors(
          baseColor: Colors.indigo,
          highlightColor: Colors.black,
          child: Text(
            'Shimmer effect on Text',
            style: textShimmerEffectStyle,
            textAlign: TextAlign.center,
          )),
    );
  }

  Shimmer get buildShimmerContainer {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.blueGrey,
      child: SizedBox(
        height: 230,
        width: double.infinity,
        child: Container(
          color: Colors.white,
        ),
      ),
    );
  }
}
