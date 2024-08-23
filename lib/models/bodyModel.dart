import 'package:flutter/material.dart';

class BodyModel {
  final String imageSrc;
  final String bodyDetails;
  final Widget page;
  final String headName;

  const BodyModel(
      {required this.imageSrc,
      required this.bodyDetails,
      required this.page,
      required this.headName});
}
