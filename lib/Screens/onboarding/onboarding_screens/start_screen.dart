// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class Start extends StatelessWidget {
  final TabController tabController;
  const Start({
    super.key,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: 200,
                width: 200,
                child: Image.asset('assets/images/welcome.png'),
              ),
              SizedBox(
                height: 10,
              ),
              ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) {
                  return LinearGradient(
                    colors: [
                      Color.fromARGB(255, 160, 20, 236),
                      Color.fromARGB(255, 230, 62, 40),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(bounds);
                },
                child: Text(
                  "Welcome to Eudora",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  'Most online dating profiles require you to use your real name and where you live, but nearly all other information is up to youOne basic rule is to be yourself, online dating experts say.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      height: 2),
                ),
              ),
            ],
          ),
          CustomButton(tabController: tabController),
        ],
      ),
    );
  }
}
