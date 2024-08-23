import 'package:flutter/material.dart';

class Item {
  final Widget header;
  final Widget body;
  bool isExpanded;
  final Function(BuildContext)? customBuilder;
  Item({required this.header, this.isExpanded = false, required this.body,this.customBuilder});
}