// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../widgets/widgets.dart';

class Biograpy extends StatelessWidget {
  final TabController tabController;
  const Biograpy({
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextHeader(
                  tabController: tabController,
                  text: 'Describe Yourself a bit'),
              SizedBox(
                height: 15,
              ),
              CustomTextFeild(
                  tabController: tabController, text: 'Enter Your Bio'),
              SizedBox(
                height: 100,
              ),
              CustomTextHeader(
                  tabController: tabController, text: 'What you a like'),
              Row(
                children: [
                  CustomTextContainer(
                      tabController: tabController, text: 'Music'),
                  CustomTextContainer(
                      tabController: tabController, text: 'Playing'),
                  CustomTextContainer(
                      tabController: tabController, text: 'Sleep'),
                  CustomTextContainer(
                      tabController: tabController, text: 'Attractive'),
                ],
              ),
              Row(
                children: [
                  CustomTextContainer(
                      tabController: tabController, text: 'Hike'),
                  CustomTextContainer(
                      tabController: tabController, text: 'Walking'),
                  CustomTextContainer(
                      tabController: tabController, text: 'Eating'),
                  CustomTextContainer(
                      tabController: tabController, text: 'Playful'),
                ],
              ),
            ],
          ),
          Column(
            children: [
              StepProgressIndicator(
                totalSteps: 6,
                currentStep: 5,
                selectedColor: Color.fromARGB(255, 230, 62, 40),
                unselectedColor: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              CustomButton(tabController: tabController, text: "NEXT STEP"),
            ],
          ),
        ],
      ),
    );
  }
}
