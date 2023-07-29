// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomTextHeader extends StatelessWidget {
  final TabController tabController;
  final String text;
  const CustomTextHeader({
    super.key,
    required this.tabController,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.w300),
    );
  }
}
