import 'package:flutter/material.dart';

class Item {
  final Widget header;
  final Widget body;
  bool isExpanded;
  Item({required this.header, this.isExpanded = false, required this.body});
}