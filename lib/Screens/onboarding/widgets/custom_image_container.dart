// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomImageContainer extends StatelessWidget {
  final TabController tabController;
  const CustomImageContainer({
    super.key,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, right: 10),
      child: Container(
        height: 150,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border(
            bottom: BorderSide(
              color: Colors.black,
            ),
            top: BorderSide(
              color: Colors.black,
            ),
            left: BorderSide(
              color: Colors.black,
            ),
            right: BorderSide(
              color: Colors.black,
            ),
          ),
        ),
        child: Align(
          alignment: Alignment.bottomRight,
          child: IconButton(
            icon: Icon(
              Icons.add_circle,
              color: Color.fromARGB(255, 230, 62, 40),
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
