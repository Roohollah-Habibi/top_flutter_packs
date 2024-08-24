import 'package:flutter/material.dart';
import 'package:mypackages_use/methods_and_constants/methods_and_constants.dart';
import 'package:photo_view/photo_view.dart';

const description =
    'A simple zoomable image/content widget for Flutter.PhotoView enables images to become able to zoom and pan with user gestures such as pinch, rotate and drag';
const imgSrc = 'assets/images/tj9.png';

class PhotoViewScreen extends StatelessWidget {
  const PhotoViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PhotoView'),
        centerTitle: true,
      ),
      body: buildBodyCenter(
        list: [
          SizedBox(height: 300,width: 200,child: PhotoView(imageProvider: AssetImage(imgSrc,))),
          const SizedBox(height: 20),
          buildDescriptionTitle('#Description'),
          buildTextDescription(description),
          const SizedBox(height: 10),
          buildDataTable(),
          buildDescriptionTitle('#Installing'),
          buildInstallingPart(
              pubAdd: '\$ flutter pub add photo_view',
              import: 'package:photo_view/photo_view.dart'),
        ],
      ),
    );
  }
}
